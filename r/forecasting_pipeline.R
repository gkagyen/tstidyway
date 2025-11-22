# complete forecasting pipeline
forecasting_pipeline <- function(data, horizon = 24){
  
  # Model training (simplified with less models)
  models <- data |> 
    drop_na() |> 
    model(
      ets = ETS(Price),
      arima = ARIMA(log(Price) ~ pdq(0,1,1) + PDQ(0,0,1)),
      s_naive = SNAIVE(Price)
    )
  
  # Model evaluation
  accuracy_metrics <- models |> 
    accuracy()
  
  # Model selection (simplified)
  best_model_name <- accuracy_metrics |> 
    arrange(MASE) |> 
    slice(1) |> 
    pull(.model)
  
  best_model <- models |> 
    select(!!best_model_name)
  
  # Generate forecast
  forecasts <- best_model |> 
    forecast(h = horizon) |> 
    hilo()
  
  # Extract key forecast details
  next_period <- forecasts$.mean[1]
  mid_term <- mean(forecasts$.mean[1:(horizon/2)])
  long_term <- mean(forecasts$.mean[1:horizon])
  
  lower_80 <- forecasts$`80%`$lower
  upper_80 <- forecasts$`80%`$upper
  
  # collapse report output into a single formatted string
  model_report <- paste(
    capture.output(report(best_model)),
    collapse = "\n"
  )
  
  # Print descriptive summary
  cat("
    📈 FORECAST SUMMARY
    ================================
    Selected Model: ", best_model_name, "
    
    NEXT PERIOD FORECAST: ", round(next_period, 2), "
    ", horizon/2, "-PERIOD AVERAGE: ", round(mid_term, 2), "
    ", horizon, "-PERIOD AVERAGE: ", round(long_term, 2), "
    
    80% CONFIDENCE INTERVAL:
    Lower: ", round(lower_80, 2), "
    Upper: ", round(upper_80, 2), "
    
    MODEL DETAILS:
    ", model_report,"\n")
  
  # Save forecast for record-keeping
  write_csv(
    forecasts |> as_tibble() |> 
      select(Date, .mean, `95%`, `80%`),
    paste0("forecast_", Sys.Date(), ".csv")
  )
  
  # return silently to avoid repeated printing
  invisible(forecasts)
}
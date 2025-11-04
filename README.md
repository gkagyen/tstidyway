# tstidyway

<!-- badges: start -->
![Made with R](https://img.shields.io/badge/Made%20with-R-1f425f.svg)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg?style=flat-square&logo=creativecommons)](https://creativecommons.org/licenses/by/4.0/)
![Built with Quarto](https://img.shields.io/badge/Built_with-Quarto-006BA1.svg?style=flat-square&logo=quarto&logoColor=white)
<!-- badges: end -->

## 📘 Overview

***Time Series Analysis in R the Tidyverse Way***\
*A practical, beginner-friendly guide using `tsibble`, `fable` and friends*

`tstidyway` is an educational book designed to introduce time series analysis using modern *tidyverse* framework in R. It offers a clear, step-by-step learning journey–from understanding time series data and exploring patterns, to forecasting using state-of-the-art models in the `fable` ecosystem.

The book emphasises tidy principles, helping learners and researchers move seamlessly from data wrangling to analysis and visualisations – all within the same grammar of data manipulation that makes the tidyverse so intuitive. This repository contains the source code for the book [tstidyway](https://gkagyen.quarto.pub/tstidyway/) which was created in RStudio with [Quarto](to.org/docs/books/)

## 🎯 Objectives

It is expected that by the end of going through this book, readers will be able to:

-   Understand time series structure and key concepts such as trend, seasonality, and autocorrelation.
-   Prepare and visualise time series data using `tsibble`, `dplyr` and `ggplot2`.
-   Explore and decompose time series patterns with the `feasts` and `fabletools` package
-   Build and evaluate forecasting models using `fable`
-   Apply best practices for tidy and reproducible time series workflows in R.

## 📊 Dataset Used

A practical dataset on Ghana's economic and environmental indicators (`gh_data.csv`) and monthly sales data (`monthly_sales.csv`) are used throughout the book. Some in-built datasets are also used for certain demonstrations.

These datasets provide real-world context and helps learners gain hands-on-experience with time series tasks such as trend detection, decomposition, and forecasting.

## 🧑🏽‍🏫 Who This Book Is For

This resource is ideal for:

-   R users with basic tidyverse knowledge who wants to dive into time series analysis.
-   Students, researchers, and data analysts in fields like economics, environmental science and engineering
-   Practitioners looking for a modern, clean and reproducible approach to forecasting in R

## 💻 How to Access Locally

You can explore the book online here, but if you want it locally you on your computer you can clone this repository. Run the codes below in your RStudio console.

``` r
repo_url <- "https://github.com/gkagyen/tstidyway" 
local_path <- file.path(tempdir(), 'learn-timeseries')

usethis::create_from_github(repo_url, destdir = local_path) 
```

> 💡**Tip:** Make sure you have correctly setup git and github in your RStudio

## 🤝 How to Contribute

`tstidyway` is an open and community-friendly project.\
Contributions are highly welcome — whether you want to fix typos, improve explanations, or add examples!

Here’s how you can contribute:

1.  **Fork the repository** on GitHub.

2.  **Create a new branch** for your changes.

3.  **Edit** the relevant `.qmd` file(s).

4.  **Commit and push** your changes.

5.  **Submit a pull request (PR)** with a short description of your improvements.

### Contribution Ideas

-   Fix spelling or grammar mistakes.

-   Add examples or new exercises.

-   Suggest clarifications for sections that may be confusing.

-   Improve visualizations or code comments.

-   Add links to relevant external resources.

All contributors will be credited in the **Acknowledgements** section of this readme file

## 🙌 Acknowledgments

Special thanks to the **Ghana** **R users community** for their support. Another big thanksto the **global R community**, the **quarto developers**, the **tidyverts developers**, and the **tidyverse developers** for creating the amazing tools that power this work.\
This book was developed as part of a learning and teaching initiative to make time series analysis more approachable for everyone — the tidyverse way.

## ⚖️ License

This work is licensed under the [**Creative Commons Attribution 4.0 International (CC BY 4.0)**](https://creativecommons.org/licenses/by/4.0/) license.\
You are free to **share**, **adapt**, and **build upon** this material for any purpose, even commercially — as long as you give appropriate credit.

## ✍️ Author

**George Kyei Agyen**\
Data Analyst and Researcher\
Ghana R User Community

📧 [*Contact*](gkagyen@live.com)\
🌍 [Github](https://github.com/gkagyen)

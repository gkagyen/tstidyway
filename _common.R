# Set seed for reproducibility across all chapters 
set.seed(141)

# Set global knitr chunk options.
knitr::opts_chunk$set(
  # Include source code in the output. Set to FALSE to hide the code.
  echo = TRUE,
  
  # Hide messages generated during code execution (e.g., from library() calls).
  message = FALSE,
  
<<<<<<< HEAD
  # Concatenate all output from a chunk into a single block.
  collapse = TRUE,
=======
  # Do not concatenate all output from a chunk into a single block.
  collapse = FALSE,
>>>>>>> 23f0be6c15cccb513947fd43e0e191a9772a4bb6
  
  # Set the default figure alignment to centre.
  fig.align = "center",
  
  # Improve resolution of plots on high-density displays
  fig.retina = 2
)

# Set global options for the book
options(
  # Limit the number of rows printed in dplyr to make tibbles more concise.
  dplyr.print_min = 5,
  dplyr.print_max = 5,
  
  # Ensure character vectors are not truncated in the console.
  stringr.view_n = 10,
  
  # Set the width of the console output for better readability.
<<<<<<< HEAD
  width = 75
=======
  width = 80
>>>>>>> 23f0be6c15cccb513947fd43e0e191a9772a4bb6
)

# Load mainly used R packages in this book
library(tidyverse)
library(tsibble)
library(fable)
library(feasts)
library(tsibbledata)
library(ggtime)
<<<<<<< HEAD

# Set a consistent theme for all ggplot2 plots 
ggplot2::theme_set(ggplot2::theme_minimal(12))
=======
library(rsample)

# Set a consistent theme for all ggplot2 plots 
ggplot2::theme_set(ggplot2::theme_grey(12))
>>>>>>> 23f0be6c15cccb513947fd43e0e191a9772a4bb6

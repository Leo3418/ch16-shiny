# UI for scatterplot
library(shiny)
library(ggplot2)

# Get a vector of column names (from `mpg`) to use as select inputs
select_values <- colnames(mpg)

# Create a shinyUI with a `fluidPage` layout
shinyUI(fluidPage(
  # A page header
  h1("MPG Dataset Exploration"),
  
  # Add a select input for the x variable
  selectInput("x_var", "X Variable", select_values, selected = "manufacturer"),
  
  # Add a select input for the y variable
  selectInput("y_var", "Y Variable", select_values, selected = "displ"),

  # Add a sliderInput to set the size of each point
  sliderInput("size", "Size of point", 1, 10, 7),

  # Add a selectInput that allows you to select a color from a list of choices
  selectInput(
    "color", "Color", c("Black", "Red", "Blue", "Green"), selected = "Blue"
  ),

  # Plot the output with the name "scatter"
  plotOutput("scatter")
))

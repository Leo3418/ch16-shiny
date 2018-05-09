### Exercise 3 ###

library(shiny)
library(ggplot2)
# Create a shiny server that creates a scatterplot. 
# It should take as an input the x_var, y_var, color, and size
shinyServer(function(input, output) {
  # Save the result of `renderPlot` to output$scatter
  output$scatter <- renderPlot({
    # Store x and y values to plot
    x <- mpg[[input$x_var]]
    y <- mpg[[input$y_var]]
  
    # Store the title of the graph in a variable
    title <- paste("MPG Dataset:", input$x_var, "v.s.", input$y_var)
    
    # Create ggplot scatter
    ggplot() +
      geom_point(
        mapping = aes(x = x, y = y), size = input$size, color = input$color
      ) +
      labs(x = input$x_var, y = input$y_var, title = title)
  })
})

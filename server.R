library(shiny)
library(datasets)
library(ggplot2)

# load data of mtcars
mpgData <- mtcars

# Preprocessing data: define factor variables
mpgData$am <- factor(mpgData$am, labels = c("Automatic", "Manual"))
mpgData$cyl <- as.factor(mpgData$cyl)
mpgData$gear <- as.factor(mpgData$gear)
mpgData$carb <- as.factor(mpgData$carb)

# Define server logic required to plot various variables against mpg
shinyServer(function(input, output) {
        
        # Compute the forumla text in a reactive expression since it is 
        # shared by the output$caption and output$mpgPlot expressions
        formulaText <- reactive({ paste("mpg ~", input$variable)
        })
        
        # Return the formula text for printing as a caption
        
        output$caption <- renderText({paste("You have selected: ",  formulaText())})
       
        
        # Generate a plot of the requested variable against mpg and only 
        # include outliers if requested
        output$mpgPlot <- renderPlot({

                   boxplot(data = mpgData,
                        as.formula(formulaText()), xlab=input$variable, ylab="mpg",
                        outline = input$outliers, outcol= "red", col = "steelblue", main = "Miles per Gallon")
        })
     
        
})

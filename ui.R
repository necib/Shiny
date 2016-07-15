
library(shiny)

# Define UI for MPG application


        shinyUI(fluidPage(
                
                titlePanel("Motor Trend Analysis"),
                
                navlistPanel(
                    
                        tabPanel("Application",   
                                       pageWithSidebar(

                                         # Application title
                                         headerPanel("MPG vs. other Variables"),

                                         # Sidebar with controls to select the variable to plot against mpg
                                         # and to specify whether outliers should be included

                                         sidebarPanel(
                                                 selectInput("variable", "Variable mpg against:",
                                                             list("Cylinders" = "cyl",
                                                                  "Transmission" = "am",
                                                                  "Gears" = "gear", "Carb"= "carb")),

                                                 checkboxInput("outliers", "Show outliers", FALSE)
                                         ),


                                         # Show the caption and plot of the requested variable against mpg
                                         mainPanel(

                                                 h3(textOutput("caption")),

                                                 plotOutput("mpgPlot")

                                         )



                                 )
                             
                                 ), 
                                 
                                 
                               
                        
                        tabPanel("Documentation",  
                                 
                                h2("Data Source:"),
                              
                                 p("The data we are about to analyze was extracted from the 1974 Motor Trend US magazine, 
                                   and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models).") ,    
                                 p("A data frame with 32 observations on 11 variables."),
                                 
                                 p("  [, 1]   mpg	 Miles/(US) gallon"),
                                 p("  [, 2]	 cyl	 Number of cylinders"),
                                 p("  [, 3]	 disp	 Displacement (cu.in.)"),
                                 p("  [, 4]	 hp	 Gross horsepower"),
                                 p("  [, 5]	 drat	 Rear axle ratio"),
                                 p("  [, 6]	 wt	 Weight (lb/1000)"),
                                 p("  [, 7]	 qsec	 1/4 mile time"),
                                 p("  [, 8]	 vs	 V/S"),
                                 p("  [, 9]	 am	 Transmission (0 = automatic, 1 = manual)"),
                                 p("  [,10]	 gear	 Number of forward gears"),
                                 p("  [,11]	 carb	 Number of carburetors"),
                                 
                                 h2("Reference:"),
                                 
                                 p("Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391–411."),
                                 
                                h2("Running the Apppliocation"),
                                
                                p("You can easy run the application as follows:") , 
                                p("1. click on the tab 'Application' "  ) , 
                                p("2. select a desired variable"  ) , 
                                p("3. check the box 'show outliers' if you want to disply outliers ")      
                                
                                 ),
                      
                        
                        tabPanel("Code",  
                                 
                                 p("The source code of this application has been stored in Github:") , 
                                 a("https://github.com/necib/Shiny/new/gh-pages")
                                 
                                 
                                 
                                 
                                 
                        )
                )
        
                
                
                
                ))
        
        
        
        
        
        




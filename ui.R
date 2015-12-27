shinyUI(pageWithSidebar(
        headerPanel('Cars k-means clustering'),
        sidebarPanel(
                selectInput('x', 'X Variable', names(mtcars)),
                selectInput('y', 'Y Variable', names(mtcars),
                            selected=names(mtcars)[[4]]),
                numericInput('clusters', 'Number of clusters', 3,
                             min = 1, max = 10),
        submitButton('Submit')
                ),
        mainPanel(
                tabsetPanel(type = "tabs", 
                            tabPanel("Plot", plotOutput("plot1")),
                            tabPanel("Documentation", 
                                     p("Application allows to explore mtcars dataset, whether there are clusters of cars.   
   
It uses k-means method of classification.    
                                       
                                       You should choose two variables and input a number of clusters (your intuition guess).   
                                       Application produces a two dimentional plot and shows centers of possible clusters.   
                                       Points on the plot are associated with their cluster.   
                                       
                                       There are 11 variables in a cars dataset:   
                                       
                                       1. mpg         Miles/(US) gallon
                                       2. cyl         Number of cylinders
                                       3. disp	 Displacement (cu.in.)
                                       4. hp	 Gross horsepower
                                       5. drat	 Rear axle ratio
                                       6. wt	 Weight (1000 lbs)
                                       7. qsec	 1/4 mile time
                                       8. vs	 V/S
                                       9. am	 Transmission (0 = automatic, 1 = manual)
                                       10. gear	 Number of forward gears
                                       11. carb	 Number of carburetors
                                       ")))
)
))

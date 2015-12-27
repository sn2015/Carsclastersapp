shinyServer(function(input, output, session) {
        
        selectedData <- reactive({
                mtcars[, c(input$x, input$y)]
        })
        
        clusters <- reactive({
                kmeans(selectedData(), input$clusters)
        })
        
        output$plot1 <- renderPlot({
                par(mar = c(5.1, 4.1, 0, 1))
                plot(selectedData(),
                     col = clusters()$cluster,
                     pch = 20, cex = 3)
                points(clusters()$centers, col = 1:input$clusters, pch = 4, cex = 4, lwd = 4)
        })
        
})
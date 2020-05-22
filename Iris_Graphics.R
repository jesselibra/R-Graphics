
## Graph 1
    plot (iris$Petal.Length,iris$Petal.Width)

## Graph 2

  ##Plot showing species subsets (right)
    plot(iris$Petal.Length, iris$Petal.Width, 
      xlab = "Petal Length",
      ylab = "Petal Width",
      main = "Petal length vs. Petal Width",
      pch = 20,
      col=ifelse(iris$Species == "setosa","coral1", 
                ifelse(iris$Species == "virginica","cyan4", 
                       ifelse(iris$Species ==  "versicolor",
                              "darkgoldenrod2", "grey"))))
  ##legend
    legend("bottomright", c("setosa","virginica", "versicolor"),
       col = c("coral1","cyan4", "darkgoldenrod2"), pch=20)



## Graph #3
    ##global settings
      par(mfrow = c(1,2), mar = c(5,5,4,1),font = 7,font.axis = 7, 
          fg = "azure4",  col.axis = "azure4", cex.axis = .75)

    ## First plot
    plot(iris$Petal.Length, iris$Petal.Width, 
        xlab = "Petal Length", 
        ylab = "Petal Width", 
        font.lab = 7,
        col.lab = "azure4",
        main = "Petal length vs. Petal Width",
        font.main = 7,
        col.main = "black",
        pch = 20,
        col=ifelse(iris$Species == "setosa","coral1", 
                ifelse(iris$Species == "virginica","cyan4", 
                       ifelse(iris$Species ==  "versicolor",
                              "darkgoldenrod2", "grey"))))
    ##legend
      legend("bottomright", c("setosa","virginica", "versicolor"),
       col = c("coral1","cyan4", "darkgoldenrod2"), pch=20)
    ##Second plot
    plot(iris$Sepal.Length, iris$Sepal.Width, 
        xlab = "Sepal Length",
        ylab = "Sepal Width",
        font.lab = 7,
        col.lab = "azure4",
        main = "Sepal length vs. Sepal Width",
        font.main=7,
        col.main = "black",
        pch = 17,
        col=ifelse(iris$Species == "setosa","coral1", 
                ifelse(iris$Species == "virginica","cyan4", 
                       ifelse(iris$Species ==  "versicolor",
                              "darkgoldenrod2", "grey"))))
    ##legend
      legend("bottomright", c("setosa","virginica", "versicolor"),
          col = c("coral1","cyan4", "darkgoldenrod2"), pch=17


## Graph #4 
  
  ##global parameters
  par(mfrow = c(1,1), mar = c(5,5,4,1),font = 7,font.axis = 7,
    fg = "azure4",  col.axis = "azure4", cex.axis = .75) 
  
  ## Create the empty plot
    plot(NULL, ylim=c(0,2.5),xlim=c(0,7), 
      xlab = "Petal Length", 
      ylab = "Petal Width", 
      font.lab = 7,
      main = "Petal length vs. Petal Width",
      font.main = 7,
      col.main = "black",)
 
  ## Add the background color
  abline(v = 0:7, col = "aliceblue", lwd = 200)
  abline(v = 0:7, col = "white")
  abline(h=0:2.5, col = "white")
  
  ## Add the data points
    points(iris$Petal.Length, iris$Petal.Width, 
       pch = 20,
       cex = 1.5,
       col=ifelse(iris$Species == "setosa","coral1", 
                  ifelse(iris$Species == "virginica","cyan4", 
                         ifelse(iris$Species ==  "versicolor",
                                "darkgoldenrod2", "grey"))))
  ##legend
  legend("bottomright", c("setosa","virginica", "versicolor"),
       col = c("coral1","cyan4", "darkgoldenrod2"), pch=20)





##Graph of font values
  
  ##create empty plot
  par(mar=c(2,6,2,2) )
  plot(NULL, xaxt="n", ylim = c(0,19), xlim= c(0,2), 
     las=1, font.lab = 1, cex.lab = 1.2,  
     ylab = "Font value", xlab = "")
  ##create background
  abline(v = 0:2, col = "aliceblue", lwd = 300)
  abline(h=0:19, col = "white")

  ##print "hello world" for each font value, 1 - 19
  for( i in 1:19){
    text(1,i, "hello world", font =i)
    par(new = TRUE)
  }
library(basicTrendline)

bubbleinrkt <- c(2.000014, 2.000768, 2.201338, 2.211214, 
                 2.630682, 2.449453, 3.084556, 5.326224, 
                 8.402288, 12.618570)

bubbleinpy <- c(0.000662, 0.057351, 5.401141, 8.512912, 
                11.807893, 20.999927, 52.893404, 97.996870, 
                146.860857, 212.614944)

bubbleinc <- c(0.000030, 0.002459, 0.332689, 0.526861, 
               0.774505, 1.376610, 3.122208, 5.440309, 
               8.349374, 12.364932)

n1 <- c(100, 1000, 10000, 12500, 15000, 
        20000, 30000, 40000, 50000, 60000)

bubbleC <- data.frame(x = n1, y = bubbleinc)
bubblePy <- data.frame(x = n1, y = bubbleinpy)
bubbleRkt <- data.frame(x = n1, y = bubbleinrkt)

n2 <- c(100, 1000, 10000, 100000, 150000, 
        200000, 300000, 400000, 500000, 600000)

mergeinrkt  <- c(2.000023, 2.000429, 2.005552, 2.116168, 
                2.208331, 2.195739, 2.519658, 2.659205, 
                2.233260, 2.825491)

mergeinpy   <- c(0.000215, 0.002778, 0.035042, 0.414151, 
                0.650515, 0.891825, 1.397365, 1.966986, 
                2.628799, 3.409507)

mergeinc    <- c(0.000013, 0.000154, 0.001769, 0.021827, 
                0.033312, 0.044343, 0.068708, 0.093227, 
                0.117670, 0.144158)

mergecurvefit <- function(x,y, lang){
  title = paste("Merge Sort in ",lang)
  plot(x, y, pch=20, xlab = "Size of Sorted Array", 
      ylab = "Time Spent (s)", main = title)

  f <- function(x,a,b) {a * x * log(x) + b}
  fit <- nls(y ~ f(x,a,b), start = c(a=0.1, b=0.1)) 
  co <- coef(fit)
  
  eq <- paste0("y = ", formatC(co[1], 
               format = "e", digits = 3), " * x * log(x) + ",
               formatC(co[2], format = "e", digits = 3))
  
  mtext(eq, 3, line=-2)
  curve(f(x, a=co[1], b=co[2]), 
          add = TRUE, col="red", lwd=2) 
}

bubblecurvefit <- function(x,y, lang){
  title = paste("Bubble Sort in ",lang)
  plot(x, y, pch=20, xlab = "Size of Sorted Array", 
       ylab = "Time Spent (s)", main = title)
  
  f <- function(x,a,b,d) {(a*x^2) + (b*x) + d}
  fit <- nls(y ~ f(x,a,b,d), start = c(a=0.1, b=0.1, d=0.1)) 
  co <- coef(fit)
  
  eq <- paste0("y = ", formatC(co[1], format = "e", 
                digits = 3),  " * x^2 + ", formatC(co[2], 
                format = "e", digits = 3), " * x + ", 
                formatC(co[3], format = "e", digits = 3))
  
  mtext(eq, 3, line=-2)
  curve(f(x, a=co[1], b=co[2], d=co[3]), 
          add = TRUE, col="red", lwd=2) 
}

mergecurvefit(n2, mergeinc, "C")
mergecurvefit(n2, mergeinpy, "Python")
mergecurvefit(n2, mergeinrkt, "Racket")

bubblecurvefit(n1, bubbleinc, "C")
bubblecurvefit(n1, bubbleinpy, "Python")
bubblecurvefit(n1, bubbleinrkt, "Racket")

bubblealllangs <- function(){
  title = paste("Bubble Sort in C, Python and Racket")
  x=seq(100,1000000,10)
  y1=3.4304*10^(-9)*x^2 - 1.5075*10^(-6)*x + 0.01212
  y2=5.9396*10^(-8)*x^2 - 3.4482*10^(-7)*x - 0.5980
  y3=4.1680*10^(-9)*x^2 - 8.4024*10^(-5)*x + 2.3450
  plot(x,y1,type='l',col='red', xlab = "# of elements", 
       ylab = "Time spent (s)", main = title)
  lines(x,y2,col='green')
  lines(x,y3,col='blue')
  legend('bottomright',inset=0.05,c("C","Python","Racket"),
         lty=1,col=c("red","green","blue"),title="Language")
  
}

bubblealllangs()

mergealllangs <- function(){
  title = paste("Merge Sort in C, Python and Racket")
  x=seq(100,1000000,10)

  plot(x,y3,type='l',col='blue', xlab = "# of elements", 
       ylab = "Time spent (s)", main = title, 
       xlim = c(0,1000000), ylim = c(0,3.2))
  lines(x,y1,col='red')
  lines(x,y2,col='green')
  
  legend('bottomright',inset=0.15,c("C","Python","Racket"),
         lty=1,col=c("red","green","blue"),title="Language")
}

mergealllangs()

alllangs <- function(){
  title = paste("Merge Sort vs. Bubble Sort")
  x=seq(100,1000000,10)
  y1=3.4304*10^(-9)*x^2 - 1.5075*10^(-6)*x + 0.01212
  y2=5.9396*10^(-8)*x^2 - 3.4482*10^(-7)*x - 0.5980
  y3=4.1680*10^(-9)*x^2 - 8.4024*10^(-5)*x + 2.3450
  
  y4= 1.7977*10^(-8)*x*log(x) + 4.4163*10^(-4)
  y5= 4.1333*10^(-7)*x*log(x) - 0.05757
  y6= 8.7035*10^(-8)*x*log(x) + 2.02427
  
  plot(x,y3,type='l',col='blue', xlab = "# of elements", 
       ylab = "Time spent (s)", main = title, 
       xlim = c(0,100000), ylim = c(0,10))
  lines(x,y1,col='blue')
  lines(x,y2,col='blue')
  
  lines(x,y4,col='red')
  lines(x,y5,col='red')
  lines(x,y6,col='red')
  
  legend('bottomright',inset=0.15,
         c("Merge Sort", "Bubble Sort"),
         lty=1,col=c("red","blue"),title="Algorithm")
}

alllangs()


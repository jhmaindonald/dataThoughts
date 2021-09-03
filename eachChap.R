sides <- list(tck = 0.6, pad1 = 0.75, pad2 = 0.75)
theme <- list(axis.line = list(alpha = 1, col = 'gray40',
                               fill = "transparent", lty = 1, lwd = 0.5),
              strip.border = list(alpha = 1, col = rep('gray40', 6),
                                  lty = rep(1, 6), lwd = rep(0.5, 6)),
              strip.shingle = list(alpha = 1, col = rep("gray80", 7)),
              box.3d = list(col = 'gray40'),
              axis.components = list(left = sides, top = sides,
                                     right = sides, bottom = sides),
              fontsize = list(text = 10, points = 6))
library(lattice)


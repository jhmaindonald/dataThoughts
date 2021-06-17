plot(Pearson[,1:2])
Pearson.lm <- lm(Son~Father, data=Pearson)
b <- coef(Pearson.lm)
pred90 <- b[1]+b[2]*72.3
abline(Pearson.lm)
abline(v=72.3, col=2)
abline(h=pred90, col=2)

z09 <- fetch_NBAPlayerStatistics(season = "09-10", what = c("",
".Home", ".Away"))
z10 <- fetch_NBAPlayerStatistics(season = "10-11", what = c("",
".Home", ".Away"))
m <- match(z09$Name,z10$Name,nomatch=0)
plot((z09$TotalPoints[m>0]), (z10$TotalPoints[m]))

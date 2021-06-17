# Regression and Correlation {#sec:reg}

Yule-Simpson type effects, discussed in Section \@ref(sec:yule1)
["Explaining the Yule-Simpson Paradox"], are important in a 
regression context also.  Nonsense correlations that arise 
where the third variable is time provide simple examples.

## What direction does the correlation go?

Variable A may cause variable B.  Or variable B may cause
variable A.  Or  both A and B may be caused (or driven) by
a third variable C.  Cases where the third variable is time,
as in Figure \@ref(fig:socAnti), are a fruitful source
of examples of spurious correlations.^[Figure \@ref(fig:socAnti)
is one of many such examples that are available from  
<http://www.tylervigen.com/spurious-correlations>.]


```r
cap11 <- "Sociology PhDs awarded (from US National Science 
Foundation data) vs Deaths from Anticoagulants.
"
```


```r
suppressPackageStartupMessages(library(latticeExtra))
phdDeaths <- data.frame(Year = 1999:2009,
Doctorates = c(572,617,566,547,597,580,536,579,576,601,664),
Deaths = c(17,39,39,27,44,46,29,42,47,52,78))
obj1 <- xyplot(Doctorates ~ Year, data=phdDeaths, type="b", xlab="")
obj2 <- xyplot(Deaths ~ Year, data=phdDeaths, type="b")
update(doubleYScale(obj1, obj2, add.ylab2=TRUE),
       par.settings=simpleTheme(col=c("purple","black"),
                                pch=16, cex=2))
```

<div class="figure">
<img src="08-regress_files/figure-epub3/socAnti-1.png" alt="Sociology PhDs awarded (from US National Science 
Foundation data) vs Deaths from Anticoagulants.
" width="75%" />
<p class="caption">(\#fig:socAnti)Sociology PhDs awarded (from US National Science 
Foundation data) vs Deaths from Anticoagulants.
</p>
</div>

Examples of this type help highlight how correlation can and
cannot reasonably be used.

The following examples, where third variables are likely to
be involved, are from [@nisbett, pages 133-134].

1. Children of parents who try to control eating are more likely 
to be overweight.
2. Countries with higher IQs have higher average wealth measures.
3. People who smoke marijuana are more likely to later use cocaine.
4. Ice cream consumption & polio were closely correlated in the 1950s.

## Regression to the mean

Tall fathers are likely to have tall sons, but shorter than themselves. 
Tall sons are likely to have tall fathers, but shorter than themselves.
The data shown in Figure \@ref(fig:pearson) are from Karl Pearson.
See `?HistData::PearsonLee`.


```r
cap12 <- "Tall fathers are likely to have tall sons, but shorter than themselves. 
Tall sons are likely to have tall fathers, but shorter than themselves."
```


```r
par(mar=c(3.6,3.6,2.1, 1.1), mgp=c(2,0.5,0))
ptCol <- adjustcolor('black', alpha=0.4)
load('Data/Pearson.RData')
ptCol <- adjustcolor('black', alpha=0.4)
plot(Pearson[,1:2], col=ptCol, xlab="Father's height (in)", ylab="Son's height (in)")
avSon <- mean(Pearson$Son)
avFather <- mean(Pearson$Father)
points(avFather, avSon, cex=1.5, col=2, pch=16)
r <- cor(Pearson)[1,2]
text(60.5,77, paste("r =", round(r,2)))
Pearson.lm <- lm(Son~Father, data=Pearson)
b <- coef(Pearson.lm)
pc95 <- quantile(Pearson$Father, 0.95)
son95 <- quantile(Pearson$Son, 0.95)
pred95 <- b[1]+b[2]*pc95
abline(Pearson.lm, col=2)
abline(v=pc95, col=2)
abline(h=pred95, col=2)
abline(h=son95, col=2, lty=2)
pcSon <- round(100*with(Pearson, sum(Son<pred95)/nrow(Pearson)))
mtext(side=3, line=0.05, "95th percentile", col=2, at=pc95)
mtext(side=4, line=0.85, paste0(pcSon,"th\npercentile"), col=2, at=pred95, srt=90)
mtext(side=3, line=1.0, "Son's height, given father's height (red lines)")
plot(Pearson[,1:2], col=ptCol)
text(60.5,77, paste("r =", round(r,2)))
Pearson.lm2 <- lm(Father~Son, data=Pearson)
c2 <- coef(Pearson.lm2)
b2 <- c(-c2[1]/c2[2], 1/c2[2])
son95 <- quantile(Pearson$Son, 0.95)
predF95 <- c2[1]+c2[2]*son95
abline(Pearson.lm, col=adjustcolor("red",alpha=0.4))
abline(b2, col="purple", lty=2, lwd=2)
abline(h=son95, col="purple", lty=2, lwd=2)
abline(v=predF95, col="purple", lty=2, lwd=2)
abline(v=pc95, col=adjustcolor('red',alpha=0.4))
abline(h=pred95, col=adjustcolor('red',alpha=0.4))
pcF <- round(100*with(Pearson, sum(Father<=predF95)/nrow(Pearson)))
mtext(side=3, line=1.0, "Father's height, given son's height (purple lines)")
mtext(side=3, line=-0.25, paste0(pcF,"th percentile"), col="purple", at=predF95)
mtext(side=4, line=0.05, paste0("95th percentile"), col="purple", at=son95, srt=90)
```

<div class="figure">
<img src="08-regress_files/figure-epub3/pearson-1.png" alt="Tall fathers are likely to have tall sons, but shorter than themselves. 
Tall sons are likely to have tall fathers, but shorter than themselves." width="48%" /><img src="08-regress_files/figure-epub3/pearson-2.png" alt="Tall fathers are likely to have tall sons, but shorter than themselves. 
Tall sons are likely to have tall fathers, but shorter than themselves." width="48%" />
<p class="caption">(\#fig:pearson)Tall fathers are likely to have tall sons, but shorter than themselves. 
Tall sons are likely to have tall fathers, but shorter than themselves.</p>
</div>

Kahneman argues, perhaps too simplistically: 

* Height is mainly due to genetic factors
* Sons share half their genes with their fathers
* Hence, correlation between sons' & fathers' heights $\simeq$ 0.5

\enlargethispage{21pt}

Galton's 1886 data, which predates Pearson's data, shows a 0.46
correlation between child height and the average of the parent
height.

Regression to the mean in verse:  
<https://www.youtube.com/watch?v=sxMllckUWaw>

### Kahneman's comments on regression to the mean {-}

"Extreme predictions and a willingness to predict rare events from
weak evidence are both manifestations of System 1. ..."  
"Regression to the mean is also a problem for System 2. The very idea
... is alien and difficult to communicate and comprehend.  This is a
case where System 2 requires special training."  
"We intuitively want to match predictions to the evidence."  
"We will not learn to understand regression from experience."


## Regression to the mean in a variety of contexts

## Decathlon scores --- between event correlations {-}


```r
cap13 <- "Between event correlations for top performances in the decathlon
between 1985 and 2006."
```


```r
Decath2006 <- subset(GDAdata::Decathlon,yearEvent==2006)
pointsNam <- c("100m", "Longjmp", "Shotput", "Highjmp", "400m", "110mHurd", 
"Discus", "PVault", "Javelin", "1500m")
## ord <- dput(corrplot::corrMatOrder(cor(Decath2006[,15:24])))
ord <- c(10L, 9L, 8L, 3L, 7L, 4L, 6L, 2L, 1L, 5L)
## Check difference of rank from Pearson correlations 
corP <- cor(Decath2006[,ord+14])
corS <- cor(Decath2006[,ord+14],method="spearman")
## round(corP-corS,2)
## dput(corrplot::corrMatOrder(cor(Decath2006[,15:24])))
ord <- c(10L, 9L, 8L, 3L, 7L, 4L, 6L, 2L, 1L, 5L)
```


```
## 
## Attaching package: 'ggplot2'
```

```
## The following object is masked from 'package:latticeExtra':
## 
##     layer
```

```
## Registered S3 method overwritten by 'GGally':
##   method from   
##   +.gg   ggplot2
```


```r
my_fn <- function(data, mapping, pts=list(), smt=list(), ...){
              ggplot(data = data, mapping = mapping, ...) + 
                         do.call(geom_point, pts) +
                         do.call(geom_smooth, smt) 
}
my_custom_cor <- function(data, mapping, color = I("grey50"), sizeRange = c(1, 5), ...) {

  # get the x and y data to use the other code
  x <- eval_data_col(data, mapping$x)
  y <- eval_data_col(data, mapping$y)
  ct <- cor.test(x,y)

  r <- unname(ct$estimate)
  rt <- format(r, digits=2)[1]

  # since we can't print it to get the strsize, just use the max size range
  cex <- max(sizeRange)

  # helper function to calculate a useable size
  percent_of_range <- function(percent, range) {
    percent * diff(range) + min(range, na.rm = TRUE)
  }

  # plot the cor value
  ggally_text(
    label = as.character(rt), 
    mapping = aes(),
    xP = 0.5, yP = 0.5, 
    size = I(percent_of_range(cex * abs(r), sizeRange)),
    color = color,
    ...
  )  + 
    # remove all the background stuff and wrap it with a dashed line
    theme_classic() + 
    theme(
      panel.background = element_rect(
        color = color, 
        linetype = "longdash"
      ), 
      axis.line = element_blank(), 
      axis.ticks = element_blank(), 
      axis.text.y = element_blank(), 
      axis.text.x = element_blank()
    )
}

ggpairs(Decath2006[,(15:24)[ord]], 
        lower = list(continuous = 
                       wrap(my_fn,
                            pts=list(size=0.25, colour=adjustcolor("black", alpha=0.4)), 
                            smt=list(method="gam", se=F, size=0.5, colour="red"))),
        axisLabels="none", columnLabels=pointsNam,
        upper=list(continuous=wrap(my_custom_cor, sizeRange=c(2.5,4.5))))
```

![](08-regress_files/figure-epub3/gg-1.png)<!-- -->

The dataset `GDAdata::Decathlon` has best annual performances of 6800 points and over for a twenty-one year period after new rules were introduced in 
1985.^[Data are from the Estonian website <http://www.decathlon2000.com/>]

### Plot measures, not points (selection only) {-}


```r
choosecols <- ord[5:9]
ggpairs(Decath2006[, (4:13)[choosecols]],
        lower = list(continuous = 
                       wrap(my_fn,
                            pts=list(size=0.25, colour=adjustcolor("black", alpha=0.4)), 
                            smt=list(method="gam", se=F, size=0.5, colour="red"))),
        columnLabels=pointsNam[5:9],
        upper=list(continuous=wrap(my_custom_cor, sizeRange=c(3,5))))
```

<img src="08-regress_files/figure-epub3/select-1.png" width="80%" />

### Total profit to total income ratio, by industry class {-}

Data are from the Statistics NZ Business Performance 
Benchmarker^[<https://shinyapps.stats.govt.nz/bpb/>]


```r
cap14 <- paste("Total profit to total income ratio, by industry class ---",
"correlation between 2015 value and 2013 value.")
```


```r
load('data/FinAllInd.RData')
expend <- subset(FinAllInd, subset=Variable=="Expenditure")
profit <- subset(FinAllInd, subset=Variable=="Profit")
income <- subset(FinAllInd, subset=Variable=="Income")
assets <- subset(FinAllInd, subset=Variable=="Assets")
employ <- subset(FinAllInd, subset=Variable=="Employee Count")
# expend[,6] <- as.numeric(expend[[6]])
# expend[,7] <- as.numeric(expend[[7]])
# expend[,8] <- as.numeric(expend[[8]])
plot(I(profit[[9]]/income[[9]])~I(profit[[11]]/income[[11]]), 
     pch=16, cex=1.25, xlab="2013 ratio", ylab="2015 ratio",
     cex.lab=1.55, col=adjustcolor('purple',alpha=0.5), fg="gray",
     xlim=c(-0.15,0.475), ylim=c(-0.125, 0.41))
mtext(side=3, line=0.5, "Total profit to total income ratio")
par(xpd=TRUE)
rt <- c(31,37,167, 330, 385, 441, 458)
left <- c(10, 15, 35, 57, 76,122,157,175, 164, 196, 253, 274, 292,341,362, 384,430)
halfblack <- adjustcolor('black', alpha=0.35)
df <- data.frame(ratio15=I(profit[[9]]/income[[9]]), ratio13=I(profit[[11]]/income[[11]]),
                 indclass=profit[["Industry_class"]])
with(df[rt,], text(ratio15~ratio13,col=halfblack,labels=indclass,pos=2))
with(df[left,], text(ratio15~ratio13,col=halfblack,labels=indclass,pos=4))
```

<div class="figure">
<img src="08-regress_files/figure-epub3/expend-1.png" alt="Total profit to total income ratio, by industry class --- correlation between 2015 value and 2013 value." width="80%" />
<p class="caption">(\#fig:expend)Total profit to total income ratio, by industry class --- correlation between 2015 value and 2013 value.</p>
</div>

Not shown are 4 points where the 2015 ratio was less than -0.3.  
(Olive growing, Petroleum exploration, Stevedoring Services.)

### NBA player total points --- correlations decline over time {-}


```r
cap12.5 <- "As time progresses, correlation decreases, and regression to the mean increases."
```


```r
load("data/NBAplayer.RData")
m1516 <- with(NBAplayer, match(z15$Name,z16$Name,nomatch=0))
df <- with(NBAplayer, data.frame(p1516=z15$TotalPoints[m1516>0], p1617=z16$TotalPoints[m1516]))
xyplot(p1617~p1516, data=df, 
     xlab="Total points, 2015-2016", 
     ylab="Total points, 2016-2017", type=c("p","r"),
     main=list("A: 2016-2017 vs 2015-2016", font=1, y=0))
m1116 <- with(NBAplayer, match(z11$Name,z16$Name,nomatch=0))
df <- with(NBAplayer, data.frame(p1112=z11$TotalPoints[m1116>0], p1617=z16$TotalPoints[m1116]))
xyplot(p1617~p1112, data=df, 
     xlab="Total points, 2010-2011", 
     ylab="Total points, 2016-2017", type=c("p","r"),  
     main=list("B: 2016-2017 vs 2010-2011",font=1, y=0))
```

<div class="figure">
<img src="08-regress_files/figure-epub3/NBA-1.png" alt="As time progresses, correlation decreases, and regression to the mean increases." width="49%" /><img src="08-regress_files/figure-epub3/NBA-2.png" alt="As time progresses, correlation decreases, and regression to the mean increases." width="49%" />
<p class="caption">(\#fig:NBA)As time progresses, correlation decreases, and regression to the mean increases.</p>
</div>

### The Sports Illustrated cover "jinx" {-}

The 21 January 2002 issue of Sports Illustrated featured an 
[article on the so-called The Sports Illustrated cover jinx]
(https://vault.si.com/vault/2002/01/21/that-old-black-magic-millions-of-superstitious-readersand-many-athletesbelieve-that-an-appearance-on-sports-illustrateds-cover-is-the-kiss-of-death-but-is-there-really-such-a-thing-as-the-si-jinx)^[<https://vault.si.com/vault/2002/01/21/that-old-black-magic-millions-of-superstitious-readersand-many-athletesbelieve-that-an-appearance-on-sports-illustrateds-cover-is-the-kiss-of-death-but-is-there-really-such-a-thing-as-the-si-jinx>]
After examining covers that had appeared from 1954 to 2001, they found that

> Of the 2,456 covers SI had run, 913 featured a person who, or team that, 
suffered some verifiable misfortune that conformed to our definition--a Jinx
rate of 37.2%.

[Wikepedia](https://en.wikipedia.org/wiki/Sports_Illustrated_cover_jinx "2021-03-24")
has very detailed comments on the phenomenon.  Especially in contact sports,
athletes who do exceptionally well will have been pushing their bodies to the
limit, with a high risk of injury.

> Most athletes that seemed to suffer the jinx most typically 
suffered because of an injury to their body, or some other bad 
luck following their appearance.

Athletes appear on the cover of a magazine such as "Sports Illustrated"
when they are performing unusually well, both relative to their fellow 
athletes, and relative to their own earlier performances.  They are
likely to be approaching their peak, and/or to have experienced an
unusual run of luck.  Where chance effects are the main driver,
their success is likely to be temporary, quickly dropping back to close 
to or below their longer term average.  Some of those who feature will
be at their peak, and will on that account soon drop back.

The Wikipedia article notes a number of athletes who went on to do
exceptionally well following appearance on the cover.  Standouts 
were the basketballer Michael Jordan (50 covers) and Muhammad Ali 
(40 covers). These were outstanding athletes that consistently
outperformed others.

## Moderating subjective assessments

* Estimate average
* Make assessment, based on what evidence seems to suggest
    + Assessment is based on current measure
* Estimate correlation between current and predicted measure.
* The correlation determines the fraction of the distance
to move from the average to the assessment.

e.g., Correlation of shotput with long jump is close to 0.4

* 14.9 meter put is at the 93nd centile (7% will do better)
* Long jump mean = 6.97; 92% mark  7.47 (difference=0.5)
* Estimate long jump result as 6.97+0.4 $\times$ 0.5 = 7.17

### Forecasting sales {-}

You are the sales forecaster for a department store chain.  
All stores are similar in size and merchandise offered,
but random factors affect sales in any year. Overall sales
are expected to increase by 10% from 2020 to 2021.  Sales
in 2020, with the expected total and mean for 2021 are,
in millions of dollars:
    
Store | 2020 | 2021
----- | ---- | ----
1 | 10 | ---
2 | 23 | ---
3 | 18 | ---
4 | 29 | ---
TOTAL | 80 | 88
MEAN  | 20 | 22

Assuming that year to year correlation is around 0.4,
what is a reasonable estimate for sales in each of the
stores in 2021.  The mean sales amount in 2021 is predicted to be 22,000,000 dollars?
With a correlation of 0.4, the predicted sales for the individual stores are
obtained thus:


Store | 2020 | Subtract 20 | Xply by 0.4, add to 22 | Predicted sales
----- | ---- | ---- | ---- | ----
1 | 10 | -10 | 22-4 | 18
2 | 23 | +3  | 22+1.2 | 23.2
3 | 18 | -2  | 22-0.8 | 21.2
4 | 29 | +9  | 29+3.6 | 32.6
MEAN  | 20 | 0 | 22   | 22

### Choosing from job applicants {-}

Correlation between presentation & performance is likely to 
be lower for the less well-known.  In both cases performance 
is likely, relative to presentation, to move in closer to the
mean. For less well-known candidates, the shift towards the
mean is likely to be greater.

### Secrist's "The Triumph of Mediocrity in Business" {-}

Horace Secrist's 1933 book was based on annual data for 1920 to 1930:

* 73 different industries; examine ratios
    + Profits:sales; Profits:assets; Expenses:sales; Expenses:assets
* For each industry in 1920: split firms into 4 quartiles: top 25%, ...
    + Took average for each statistic, for each quartile, for each year.
    + Surprise, surprise, the best went, on average, down ...

"Complete freedom to enter trade and the continuance of competition
mean the perpetuation of mediocrity.  ...  neither superiority or
inferiority will tend to persist. Rather, mediocrity tends to become
the rule."

### Note again --- regression to the mean goes in both directions! {-}


```r
cap15 <- paste("Simulations based on correlation for Secrist's data --- 
               showing how regression to the mean goes in both directions.")
```


```r
par(mfrow=c(1,2), mgp=c(2,0.5,0), mar=c(3.1,3.1,1.6,1.1))
set.seed(29)
x1 <- rnorm(1000, mean=34, sd=5)
x2 <- 0.7*x1 + rnorm(1000, mean=.3*34, sd=5*sqrt(1-.49))
x3 <- 0.7*x2 + rnorm(1000, mean=.3*34, sd=5*sqrt(1-.49))
## print(round(c(sd(x1),sd(x2),sd(x3)),2))
## print(round(c(range(x1),range(x2),range(x3)),2))
xx <- data.frame(x1=x1,x2=x2,x3=x3)
xx <- xx[order(xx[,1]),]
qxx <- sapply(xx, function(x)c(mean(x[1:250]), mean(x[251:500]),
 mean(x[501:750]),mean(x[751:1000])))
plot(c(1920,1925,1930),qxx[4,], xlab="", ylab="Profit", 
     ylim=c(26.6,40.7), fg="gray", type="n") 
for(i in 1:4){
lines(c(1920,1925,1930),qxx[i,], ylab="Profit", fg="gray", type="b", pch=16) 
}
text(rep(1920,4), qxx[,1], c("Lowest 25% in 1920","2nd Lowest 25% in 1920",
                             "2nd highest 25% in 1920", "Highest 25% in 1920"),
     pos=4, col=adjustcolor("blue",alpha=0.5))  
xx2 <- xx[order(xx[,3]),]
qxx2 <- sapply(xx2, function(x)c(mean(x[1:250]), mean(x[251:500]),
 mean(x[501:750]),mean(x[751:1000])))
plot(c(1920,1925,1930),qxx[4,], xlab="", ylab="Profit", 
     ylim=c(26.6,40.7), fg="gray", type="n") 
for(i in 1:4){
lines(c(1920,1925,1930),qxx2[i,], ylab="Profit", fg="gray", type="b", pch=16) 
}
text(rep(1930,4), qxx2[,3], c("Lowest 25% in 1930","2nd Lowest 25% in 1930",
                             "2nd highest 25% in 1930", "Highest 25% in 1930"),
     pos=2, col=adjustcolor("blue",alpha=0.5))   
```

<div class="figure">
<img src="08-regress_files/figure-epub3/sim-1.png" alt="Simulations based on correlation for Secrist's data --- 
               showing how regression to the mean goes in both directions." width="105%" />
<p class="caption">(\#fig:sim)Simulations based on correlation for Secrist's data --- 
               showing how regression to the mean goes in both directions.</p>
</div>
    
### "Do old fallacies ever die?" {-}

Smith gives references to work by prominent economists in the past
half-century that had quoted Secrist approvingly or repeated his error.

* 1970: "The book [by Secrist] contains an elaborate statistical
demonstration that, over a period of time, initially high-performing ..."
* 1980s investment textbook: "Ultimately, economic forces will force
the convergence of the profitability and growth rates of different firms."
This was backed up with a 1980/1966 Secrist type comparison.
* 2000: (Journal article) "... profitability is mean-reverting within
as well as across industries.  Other firms eventually mimic products
and technologies that produce above normal profitability ..."
* Friedman (2003) "Do old fallacies ever die?" cites other examples.  

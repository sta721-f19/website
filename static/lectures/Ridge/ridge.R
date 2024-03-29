library(MASS)
library(xtable)
pdf("longley-pairs.pdf")
pairs(Employed ~ ., data=longley)
dev.off()
cor(longley)
#

summary(lm(Employed ~ scale(.), data=longley))
longley.lm= lm(Employed ~ ., data=longley)
summary(longley.lm)
summary(lm(Employed ~ scale(longley[,-7]), data=longley))

# Ridge Regression
pdf("ridge-trace.pdf")
plot(lm.ridge(Employed ~ ., data=longley, lambda=seq(0, 0.1, 0.0001)) )
dev.off()
#lambda is the sequence of ridge values  (k in the notes)
select(lm.ridge(Employed ~ ., data=longley, lambda=seq(0, 0.1, 0.0001)))
# best Generalised cross vlidation lambda = 0.0028
longley.RReg = lm.ridge(Employed ~ ., data=longley, lambda=.0028)
coef(longley.RReg)

# or extract from the original object
fit = lm.ridge(Employed ~ ., data=longley, lambda=seq(0, 0.1, 0.0001))
best.lambda=as.numeric(names(fits$gcv[(1:length(fits$gcv))[fit$gcv == min(fit$gcv)]]))

best.lambda = as.numeric(names(which.min(fit$gcv)))
coef(fit)[best.lambda,]




# compare to LASSO
install.packages("lars")
library(lars)
longley.lars = lars(as.matrix(longley[,-7]), longley[,7], type="lasso")
pdf("longley-lars.pdf")
plot(longley.lars)
dev.off()
coef(longley.lars)
summary(longley.lars)
# k_6 has the minimun Cp
coef(longley.lars)[7,]

#see also LASSO2 package for cross-validation


plot(coef(longley.lars)[7,], coef(longley.RReg)[-1])
abline(0,1)
abline(h=0); abline(v=0)
par(mfrow=c(2,1))
plot(coef(longley.lm)[-1],coef(longley.lars)[7,],
     xlim=c(-.5, 2), ylim=c(-.5,2),
     xlab="OLS", ylab="Lasso")
abline(0,1) 
plot(coef(longley.lm)[-1],coef(longley.RReg)[-1],
     xlim=c(-.5, 2), ylim=c(-.5,2),
     xlab="OLS", ylab="Ridge")
abline(0,1)

# Next Bayesian Lasso & Horseshoe

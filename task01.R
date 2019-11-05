
x=sample(100)
y = 2*x + rnorm(100, mean=0, sd=2 )
lm1=lm(y~x)
summary(lm1)
lm2=lm(y~x+0)
summary(lm2)

x=sample(100)
y=sample(100)

z = 2*x + 3*y+ rnorm(100, mean=0, sd=2 )
lm3=lm(z~x+y)
summary(lm3)
lm4=lm(z~x+y+0)
summary(lm4)

x=sample(100)
y=sample(100)
w=sample(100)

z = 2*x + 3*y+  rnorm(100, mean=0, sd=2 )
lm5=lm(z~x+y+w)
summary(lm5)



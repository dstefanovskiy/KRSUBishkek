# https://www.datacamp.com/community/tutorials/neural-network-models-r

in1=c(20,10,30,20,80,30)
in2=c(90,20,40,50,50,80)
out=c(1,0,0,0,1,1)
# Here, you will combine multiple columns or features into a single set of data
df=data.frame(in1,in2,out)

# load library
require(neuralnet)

# fit neural network
nn=neuralnet(out~in1+in2,data=df, hidden=3,act.fct = "logistic",
             linear.output = FALSE)

plot(nn)

#test
in1=c(30,40,85)
in2=c(85,50,40)
test=data.frame(in1,in2)
Predict=compute(nn,test)
Predict$net.result
prob <- Predict$net.result
pred <- ifelse(prob>0.5, 1, 0)
pred






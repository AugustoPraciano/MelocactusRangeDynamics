#######################################################################################
##################################### Null Models #####################################
#######################################################################################
### This script is used to create and evaluate 1000 null distribution models. 
### This must be run after the main "A2_Model_Fitting_ME" script. Null models are
### used to test the significance of the models created with real species data.

# setting random seed to always create the same random set
set.seed(1993)

# fitt and test one thousand null models
nullRep <- c(1:1000) # the number of repetitions is defined

# null models evaluate are stored in a list called 'nullEval'
nullEval <- list()

for(i in nullRep) {
# a set of 25% of randon select presence records are used to evaluate the model
testSamp <- sample(nrow(presValues), round(0.25 * nrow(presValues)))
testPres <- presValues[testSamp,]

# a set of randon points are used like presence records to fit the model
# same sample size of specie presence records (75% of total)
nullTrain <- randomPoints(predictors, 22) 
nullTrainpres <- extract(predictors, nullTrain)

# create a dataframe for train
nullTraindata <- data.frame(rbind(nullTrainpres, backValues))
# differentiate presence and background values 
nullPb <- c(rep(1, nrow(nullTrainpres)), rep(0, nrow(backValues)))
# differentiate presence and abscense (background) values
pa <- c(rep(1, nrow(testPres)), rep(0, nrow(backValues)))
# create a dataframe for test
testData <- data.frame(cbind(pa, rbind(testPres, backValues)))
#######################################################################################
# function maxent() is used(Hijmans & al., 2013)
mxNull <- maxent(nullTraindata, 
             nullPb,
			 path = "C:/Mbahiensis/Maxent/outputNull",
			 args = c("redoifexists", "notooltips", "noautofeature", "linear", 
			 "quadratic", "hinge", "noproduct", "nothreshold", "l2lqthreshold=1"))

# null models evaluate
nullEval[[i]] <- evaluate(testData[testData==1,], testData[testData==0,], mxNull)
}

# extract null AUC values
nullAuc <- sapply( nullEval, function(x){slot(x, 'auc')} )
# null AUC values are exported as .asc file
write.csv(x = nullAuc, file = "C:/Mbahiensis/Maxent/testNullAucValues.csv")

#######################################################################################
################################  END OF CODE  ########################################
#######################################################################################
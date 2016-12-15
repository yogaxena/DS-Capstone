acc<-accident[c(1,10,12,13,14,15,16,26,27,37,51,52)]
View(acc)


library(party)
library(randomForest)


# Create the forest.
output.forest <- randomForest(out ~ DAY_WEEK + HOUR + COUNTY, 
                              data = acc)

# View the forest results.
print(output.forest) 

# Importance of each predictor.
print(importance(fit,type = 2)) 

library(rpart)


Out <- rpart(DRUNK_DR ~  WEATHER+ DAY_WEEK + HOUR + COUNTY,
                data=acc[(acc$DRUNK_DR),], 
                method="anova")
> acc$DRUNK_DR[(acc$DRUNK_DR)] <- predict(FATALS, acc[(combi$DRUNK_DR),])




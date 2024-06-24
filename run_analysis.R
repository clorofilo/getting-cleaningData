library(dplyr)
#Merge Training data in one dataFrame
fusionTrainData<- function () {
    trDf<- read.table('data/train/subject_train.txt')
    trDf<- rename(trDf, subject_train = names(trDf[1]))
    trDf$y_train<- read.table('data/train/y_train.txt')
    trDf$x_train<- read.table('data/train/X_train.txt')
    for( archivo in dir('data/train/Inertial Signals/')) {
        trDf[[archivo]]<- read.table(paste('data/train/Inertial Signals/', archivo, sep =''))
    }
    names(trDf)<- gsub('_train', '', names(trDf))
    names(trDf)<- gsub('.txt', '', names(trDf))
    return (trDf)
}

#Merge test data in one dataFrame
fusionTestData<- function () {
    tsDf<- read.table('data/test/subject_test.txt')
    tsDf<- rename(tsDf, subject_test = names(tsDf[1]))
    tsDf$y_test<- read.table('data/test/y_test.txt')
    tsDf$x_test<- read.table('data/test/X_test.txt')
    for( archivo in dir('data/test/Inertial Signals/')) {
        tsDf[[archivo]]<- read.table(paste('data/test/Inertial Signals/', archivo, sep =''))
    }
    names(tsDf)<- gsub('_test', '', names(tsDf))
    names(tsDf)<- gsub('.txt', '', names(tsDf))
    return(tsDf)
}

#Merge training and test data in one dataFrame
fusionAlldata<- function (trDf = fusionTrainData(), tsDf= fusionTestData()) {df<- rbind(trDf, tsDf); return (df)}
df<- fusionAlldata()

#Mean & SD for each column

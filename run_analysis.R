#Dowload and unzip the data for the project
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","./data/UCI HAR Dataset.zip")
unzip(zipfile="./data/UCI HAR Dataset.zip",exdir="./data")

#Read features
features <- read.table('./data/UCI HAR Dataset/features.txt')
MeanStdFeatures <- grep("mean\\(\\)|std\\(\\)", features[,2])
MeanStdFeatures.names <- features[MeanStdFeatures,2]

#Read activity labels
activityLabels = read.table('./data/UCI HAR Dataset/activity_labels.txt')

#Read train data
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")[MeanStdFeatures]
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

#Read test data
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")[MeanStdFeatures]
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

#Assign  variable names
names(x_train) <- MeanStdFeatures.names 
names(y_train) <- "activityId"
names(subject_train) <- "subjectId"

names(x_test) <- MeanStdFeatures.names 
names(y_test) <- "activityId"
names(subject_test) <- "subjectId"

names(activityLabels) <- c('activityId','activityName')

#Add activityID and subjectID to train dataset
trainData <- cbind(y_train, subject_train, x_train)
#Add activityID and subjectID to test dataset
testData <- cbind(y_test, subject_test, x_test)
#Merge train and test
allData <- rbind(trainData, testData)

#Add activityName
MeanStdWithActNames <- merge(allData,activityLabels,by='activityId')

#Get averages by activity & subject and Order
avgByActSubj <- aggregate(.~activityId+activityName+subjectId,MeanStdWithActNames,mean)
avgByActSubj <- avgByActSubj[order(avgByActSubj$activityId,avgByActSubj$subjectId),]

#Write the new tidy data set to a text file
write.table(avgByActSubj,"./data/tidy_dataset.txt",row.name=FALSE,quote=FALSE)

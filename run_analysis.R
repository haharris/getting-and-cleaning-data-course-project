## Libraries
library(data.table)
library(dplyr)

## Download and unzip data
if(!file.exists("./courseProject")) {dir.create("./courseProject")}
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "./courseProject/UCI_HAR_Dataset")
unzip("./courseProject/UCI_HAR_Dataset")

## Read metadata
feature_names <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

## Read training data
Subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
activity_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
features_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)

## Read test data
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
activity_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
features_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)

## Merge the data sets to make a master data set
    # name the columns in the newly made tables
colnames(features_train) <- feature_names[,2]
colnames(activity_train) <- "activityID"
colnames(Subject_train) <- "Subject"
colnames(features_test) <- feature_names[,2]
colnames(activity_test) <- "activityID"
colnames(subject_test) <- "Subject"
colnames(activity_labels) <- c("activityID", "activityType")
    # make the tables, then merge them
traindata <- cbind(activity_train, Subject_train, features_train)
testdata <- cbind(activity_test, subject_test, features_test)
allData <- rbind(traindata, testdata)

## Extract the mean and std for each measurement
meanAndstd <- grep(".*activityID*.|.*Subject*.|.*mean*.|.*std*.", colnames(allData), ignore.case = TRUE)
specifiedData <- allData[,meanAndstd]

## Use descriptive activity names
specifiedData$activityID <- as.character(specifiedData$activityID)
for(i in 1:6){
    specifiedData$activityID[specifiedData$activityID==i] <-
        as.character(activity_labels[i,2])
}
specifiedData$activityID <- as.factor(specifiedData$activityID)

## Make descriptive labels
names(specifiedData) <- gsub("activityID", "Activity", names(specifiedData))
names(specifiedData) <- gsub("Acc", "Accelerometer", names(specifiedData))
names(specifiedData) <- gsub("Gyro", "Gyroscope", names(specifiedData))
names(specifiedData) <- gsub("BodyBody", "Body", names(specifiedData))
names(specifiedData) <- gsub("Mag", "Magnitude", names(specifiedData))
names(specifiedData) <- gsub("^t", "Time", names(specifiedData))
names(specifiedData) <- gsub("^f", "Frequency", names(specifiedData))
names(specifiedData) <- gsub("tBody", "TimeBody", names(specifiedData))
names(specifiedData) <- gsub("fBody", "FrequencyBody", names(specifiedData))
names(specifiedData) <- gsub("-mean()", "Mean", names(specifiedData))
names(specifiedData) <- gsub("-std()", "STD", names(specifiedData))
names(specifiedData) <- gsub("-freq()", "frequency", names(specifiedData))
names(specifiedData) <- gsub("angle", "Angle", names(specifiedData))
names(specifiedData) <- gsub("gravity", "Gravity", names(specifiedData))

## Create a tidy data set that has the averages each variable for each activity
## and each subject
tidyData <- aggregate(. ~Subject + Activity, specifiedData, mean)
tidyData <- tidyData[order(tidyData$Subject, tidyData$Activity),]
write.table(tidyData, file = "tidy_data.txt", row.names = FALSE)
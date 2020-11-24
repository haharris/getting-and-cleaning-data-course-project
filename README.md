# getting-and-cleaning-data-course-project
This repository contains the final course project for the Getting and Cleaning Data course, offered through Coursera.org by John's Hopkins Univeristy.  The purpose of the project is to demonstrate the ability of the student to collect, work with, and clean data by creating a tidy data set to be used for future analysis.

The data for this project comes from the area of wearable technology.  Data were collected from the accellorometer and gyroscope of the Samsung Galaxy S smartphone for several measurements.  This data was retrieved, modified, and cleaned, resulting in a tidy data set for future analysis.

Original data was obtained here:
https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data that were retreived, modified, and cleaned to create the tidy data set were obtained here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This repository contains the following:

README.md; this file provides an overview of the project, data set, and how the data set was prepared.
tidy_data.txt; this is the final, tidy data set.  This table contains measurement averages for each activity type for each participant.
CodeBook.md; this is the code book which describes the contents of the data (data, variables, and transformations).
run_analysis.R; the R script used to retrieve, modify, and tidy the data.

Creating the tidy data set

The script, run_analysis.R, ultimately creates the tidy data set from the raw smartphone data collected.  First, the script will create a folder (if one does not already exist), for the data set.  Next the files are downloaded from the provided URL, and unzipped.  The data is then read into tables, and merged into one complete data set.  Mean and standard deviation measurements were then extracted, and all variable and activity names were changed to be descriptive.  Finally, a tidy data set was created that took the means for each measurement by participant and activity type.  This tidy data set was written into the file tidy_data.txt.

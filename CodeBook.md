This code book contains the location of data, a description of the R script, as well as information regarding variables in the code.

# Data Source

Source data are from the Human Activity Recognition Using Smartphones Data Set.  A full description of which can be found:
https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data used in this project can be found:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


# About run_analysis.R
This R script does the following, in accordance with project requirements:
    1. Downloads and extracts .txt files with the raw data.
    2. Reads files and creates a final complete data set.
        2.1. Read metadata files into two tables.
        2.2. Read training data files into three tables.
        2.3. Read test data files into three tables.
        2.4. Renames columns for continuity.
        2.5. Creates tables for all training data and all test data,
                then joins the two tables into a complete data table.
    3. Extracts only columns that contain specified measurements 
        (mean and standard deviation)
    4. All activity ID's and variable names are changed to be descriptive           and easily understood.
    5. Creates a final tidy data set with the average for each variable (measurement) for each and activity and subject.


# Variable information
tidy_data.txt contains the following variables:
            
    Subject: participant ID
    
    Activity: one of the following six possible activities:
        
        WALKING
        WALKING_UPSTAIRS
        WALKING_DOWNSTAIRS
        SITTING
        STANDING
        LAYING
    
    The remaining 86 columns correspond to a smartphone measurement:
        
        Time Body Accelerometer
            TimeBodyAccelerometerMean()-X
            TimeBodyAccelerometerMean()-Y                    
            TimeBodyAccelerometerMean()-Z                   
            TimeBodyAccelerometerSTD()-X
            TimeBodyAccelerometerSTD()-Y
            TimeBodyAccelerometerSTD()-Z
        
        Time Gravity Acclerometer
            TimeGravityAccelerometerMean()-X
            TimeGravityAccelerometerMean()-Y
            TimeGravityAccelerometerMean()-Z
            TimeGravityAccelerometerSTD()-X
            TimeGravityAccelerometerSTD()-Y
            TimeGravityAccelerometerSTD()-Z
        
        Time Body Accelerometer Jerk
            TimeBodyAccelerometerJerkMean()-X
            TimeBodyAccelerometerJerkMean()-Y
            TimeBodyAccelerometerJerkMean()-Z
            TimeBodyAccelerometerJerkSTD()-X
            TimeBodyAccelerometerJerkSTD()-Y
            TimeBodyAccelerometerJerkSTD()-Z
        
        Time Body Gyroscope
            TimeBodyGyroscopeMean()-X
            TimeBodyGyroscopeMean()-Y
            TimeBodyGyroscopeMean()-Z
            TimeBodyGyroscopeSTD()-X
            TimeBodyGyroscopeSTD()-Y
            TimeBodyGyroscopeSTD()-Z
        
        Time Body Gyroscope Jerk
            TimeBodyGyroscopeJerkMean()-X
            TimeBodyGyroscopeJerkMean()-Y
            TimeBodyGyroscopeJerkMean()-Z
            TimeBodyGyroscopeJerkSTD()-X
            TimeBodyGyroscopeJerkSTD()-Y
            TimeBodyGyroscopeJerkSTD()-Z
        
        Time Body Accelerometer Magnitude
            TimeBodyAccelerometerMagnitudeMean()
            TimeBodyAccelerometerMagnitudeSTD()
            TimeGravityAccelerometerMagnitudeMean()
            TimeGravityAccelerometerMagnitudeSTD()
        
        Time Body Accelerometer Jerk Magnitude
            TimeBodyAccelerometerJerkMagnitudeMean()
            TimeBodyAccelerometerJerkMagnitudeSTD()
        
        Time Body Gyroscope Magnitude
            TimeBodyGyroscopeMagnitudeMean()
            TimeBodyGyroscopeMagnitudeSTD()
        
        Time Body Gyroscope Jerk Magnitude
            TimeBodyGyroscopeJerkMagnitudeMean()
            TimeBodyGyroscopeJerkMagnitudeSTD()
        
        Frequency Body Accelerometer
            FrequencyBodyAccelerometerMean()-X
            FrequencyBodyAccelerometerMean()-Y
            FrequencyBodyAccelerometerMean()-Z
            FrequencyBodyAccelerometerSTD()-X
            FrequencyBodyAccelerometerSTD()-Y
            FrequencyBodyAccelerometerSTD()-Z
            FrequencyBodyAccelerometerMeanFreq()-X
            FrequencyBodyAccelerometerMeanFreq()-Y
            FrequencyBodyAccelerometerMeanFreq()-Z
        
        Frequency Body Accelerometer Jerk
            FrequencyBodyAccelerometerJerkMean()-X
            FrequencyBodyAccelerometerJerkMean()-Y
            FrequencyBodyAccelerometerJerkMean()-Z
            FrequencyBodyAccelerometerJerkSTD()-X
            FrequencyBodyAccelerometerJerkSTD()-Y
            FrequencyBodyAccelerometerJerkSTD()-Z
            FrequencyBodyAccelerometerJerkMeanFreq()-X
            FrequencyBodyAccelerometerJerkMeanFreq()-Y
            FrequencyBodyAccelerometerJerkMeanFreq()-Z
        
        Frequency Body Gyroscope
            FrequencyBodyGyroscopeMean()-X
            FrequencyBodyGyroscopeMean()-Y
            FrequencyBodyGyroscopeMean()-Z
            FrequencyBodyGyroscopeSTD()-X
            FrequencyBodyGyroscopeSTD()-Y
            FrequencyBodyGyroscopeSTD()-Z
            FrequencyBodyGyroscopeMeanFreq()-X
            FrequencyBodyGyroscopeMeanFreq()-Y
            FrequencyBodyGyroscopeMeanFreq()-Z
        
        Frequency Body Accelerometer Magnitude
            FrequencyBodyAccelerometerMagnitudeMean()
            FrequencyBodyAccelerometerMagnitudeSTD()
            FrequencyBodyAccelerometerMagnitudeMeanFreq()
            FrequencyBodyAccelerometerJerkMagnitudeMean()
            FrequencyBodyAccelerometerJerkMagnitudeSTD()
            FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()
        
        Frequency Body Gyroscope Magnitude
            FrequencyBodyGyroscopeMagnitudeMean()
            FrequencyBodyGyroscopeMagnitudeSTD()
            FrequencyBodyGyroscopeMagnitudeMeanFreq()
        
        Frequency Body Gyroscope Jerk Magnitude
            FrequencyBodyGyroscopeJerkMagnitudeMean()
            FrequencyBodyGyroscopeJerkMagnitudeSTD()
            FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()
       
        Angle
            Angle(TimeBodyAccelerometerMean,Gravity)
            Angle(TimeBodyAccelerometerJerkMean),GravityMean)
            Angle(TimeBodyGyroscopeMean,GravityMean)
            Angle(TimeBodyGyroscopeJerkMean,GravityMean)
            Angle(X,GravityMean)
            Angle(Y,GravityMean)
            Angle(Z,GravityMean)
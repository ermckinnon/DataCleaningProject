# Code Book for tidydata.txt File
 
#Code Description
The R script file in this repository -  run_analysis.R  - produces an text file called tidydata.txt.
The R script file processes the Samsung data set at the following link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data was collected from accelerometers from the Samsung Galaxy S smartphone from 30 people (subjects) as they were performing 6 types of activity (walking, standing etc).

In order for the script to work you need to store the data in your working directory for R. The folder with all the data "UCI HAR Dataset" must be in your working directory.

The R script performs the following process:
-	Merges the training and the test sets in the folder to create a single dataset
-	Coerces all feature names to valid R names. The feature names are scientifically complex so a full codebook is also provided
-	Extracts only measurements on the mean and standard deviation for each measurement. In practice only the features with “mean” and “std” in their names are extracted.
-	Labels the activities undertaken by the trial subjects – walking, standing etc
-	Produces a tidy summary data set based on the mean of each extracted feature for each subject and activity they undertook. There are a total of 180 combinations (30 subjects each doing the 6 activities) around which the mean of each feature has been caclulated.
-	The tidy dataset is written as a text file called "tidydata.txt" into your working directory.

Addditional comments are provided in the script file to explain how the code works.

Further information on the actual dataset and how the original data was produced can be found at the following link: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 




#Variables Description
This text file contains 180 observations of 81 variables - 2 identifier variables and 79 feature variables. Taking each in turn.



#Identifier variables
There are two identifier variables:

Subject - represents each unique volunteer who took part in the trial and collected data. There were 30 subjects and this variable is an integer from 1 to 30 representing each.

Activity - represents the activity that the subject was doing while carrying their phone. There are 6 activities:
WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. This variable is a string of characters.

#Feature Variables
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ). Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

Tidydata contains summary means of the mean and standard deviation of each feature. These means have been calculated for each subject across all instances of activity. Detailed variable names follow - all variables are numeric.


# Variable Names and Desciptions

tBodyAcc.mean...X	Mean of mean of  body acceleration signals across x axis

tBodyAcc.mean...Y	Mean of mean of  body acceleration signals across y axis

tBodyAcc.mean...Z	Mean of mean of  body acceleration signals across z axis

tBodyAcc.std...X	Mean of Standard Deviation of  body acceleration signals across x axis

tBodyAcc.std...Y	Mean of Standard Deviation of  body acceleration signals across y axis

tBodyAcc.std...Z	Mean of Standard Deviation of  body acceleration signals across z axis

tGravityAcc.mean...X	Mean of mean of  gravity acceleration signals across x axis

tGravityAcc.mean...Y	Mean of mean of  gravity acceleration signals across y axis

tGravityAcc.mean...Z	Mean of mean of  gravity acceleration signals across z axis

tGravityAcc.std...X	Mean of Standard Deviation of  gravity acceleration signals across x axis

tGravityAcc.std...Y	Mean of Standard Deviation of  gravity acceleration signals across y axis

tGravityAcc.std...Z	Mean of Standard Deviation of  gravity acceleration signals across z axis

tBodyAccJerk.mean...X	Mean of mean of  body acceleration jerk signals across x axis

tBodyAccJerk.mean...Y	Mean of mean of  body acceleration jerk signals across y axis

tBodyAccJerk.mean...Z	Mean of mean of  body acceleration jerk signals across z axis

tBodyAccJerk.std...X	Mean of Standard Deviation of  body acceleration jerk signals across x axis

tBodyAccJerk.std...Y	Mean of Standard Deviation of  body acceleration jerk signals across y axis

tBodyAccJerk.std...Z	Mean of Standard Deviation of  body acceleration jerk signals across z axis

tBodyGyro.mean...X	Mean of mean of  body gyro signals across x axis

tBodyGyro.mean...Y	Mean of mean of  body gyro signals across y axis

tBodyGyro.mean...Z	Mean of mean of  body gyro signals across z axis

tBodyGyro.std...X	Mean of Standard Deviation of  body gyro signals across x axis

tBodyGyro.std...Y	Mean of Standard Deviation of  body gyro signals across y axis

tBodyGyro.std...Z	Mean of Standard Deviation of  body gyro signals across z axis

tBodyGyroJerk.mean...X	Mean of mean of  body gyro jerk signals across x axis

tBodyGyroJerk.mean...Y	Mean of mean of  body gyro jerk signals across y axis

tBodyGyroJerk.mean...Z	Mean of mean of  body gyro jerk signals across z axis

tBodyGyroJerk.std...X	Mean of Standard Deviation of  body gyro jerk signals across x axis

tBodyGyroJerk.std...Y	Mean of Standard Deviation of  body gyro jerk signals across y axis

tBodyGyroJerk.std...Z	Mean of Standard Deviation of  body gyro jerk signals across z axis

tBodyAccMag.mean..	Mean of mean of  body acceleration signals  magnitude 

tBodyAccMag.std..	Mean of Standard Deviation of  body acceleration signals  magnitude 

tGravityAccMag.mean..	Mean of mean of  gravity acceleration signals  magnitude 

tGravityAccMag.std..	Mean of Standard Deviation of  gravity acceleration signals  magnitude 

tBodyAccJerkMag.mean..	Mean of mean of  body acceleration jerk signals  magnitude 

tBodyAccJerkMag.std..	Mean of Standard Deviation of  body acceleration jerk signals  magnitude 

tBodyGyroMag.mean..	Mean of mean of  body gyro signals  magnitude 

tBodyGyroMag.std..	Mean of Standard Deviation of  body gyro signals  magnitude 

tBodyGyroJerkMag.mean..	Mean of mean of  body gyro jerk signals  magnitude 

tBodyGyroJerkMag.std..	Mean of Standard Deviation of  body gyro jerk signals  magnitude 

fBodyAcc.mean...X	Mean of mean of  body acceleration signals  in frequency domain across x axis

fBodyAcc.mean...Y	Mean of mean of  body acceleration signals  in frequency domain across y axis

fBodyAcc.mean...Z	Mean of mean of  body acceleration signals  in frequency domain across z axis

fBodyAcc.std...X	Mean of Standard Deviation of  body acceleration signals  in frequency domain across x axis

fBodyAcc.std...Y	Mean of Standard Deviation of  body acceleration signals  in frequency domain across y axis

fBodyAcc.std...Z	Mean of Standard Deviation of  body acceleration signals  in frequency domain across z axis

fBodyAcc.meanFreq...X	Mean of mean of  body acceleration frequency signals  in frequency domain across x axis

fBodyAcc.meanFreq...Y	Mean of mean of  body acceleration frequency signals  in frequency domain across y axis

fBodyAcc.meanFreq...Z	Mean of mean of  body acceleration frequency signals  in frequency domain across z axis

fBodyAccJerk.mean...X	Mean of mean of  body acceleration jerk signals  in frequency domain across x axis

fBodyAccJerk.mean...Y	Mean of mean of  body acceleration jerk signals  in frequency domain across y axis

fBodyAccJerk.mean...Z	Mean of mean of  body acceleration jerk signals  in frequency domain across z axis

fBodyAccJerk.std...X	Mean of Standard Deviation of  body acceleration jerk signals  in frequency domain across x axis

fBodyAccJerk.std...Y	Mean of Standard Deviation of  body acceleration jerk signals  in frequency domain across y axis

fBodyAccJerk.std...Z	Mean of Standard Deviation of  body acceleration jerk signals  in frequency domain across z axis

fBodyAccJerk.meanFreq...X	Mean of mean of  body acceleration jerk frequency signals  in frequency domain across x axis

fBodyAccJerk.meanFreq...Y	Mean of mean of  body acceleration jerk frequency signals  in frequency domain across y axis

fBodyAccJerk.meanFreq...Z	Mean of mean of  body acceleration jerk frequency signals  in frequency domain across z axis

fBodyGyro.mean...X	Mean of mean of  body gyro signals  in frequency domain across x axis

fBodyGyro.mean...Y	Mean of mean of  body gyro signals  in frequency domain across y axis

fBodyGyro.mean...Z	Mean of mean of  body gyro signals  in frequency domain across z axis

fBodyGyro.std...X	Mean of Standard Deviation of  body gyro signals  in frequency domain across x axis

fBodyGyro.std...Y	Mean of Standard Deviation of  body gyro signals  in frequency domain across y axis

fBodyGyro.std...Z	Mean of Standard Deviation of  body gyro signals  in frequency domain across z axis

fBodyGyro.meanFreq...X	Mean of mean of  body gyro frequency signals  in frequency domain across x axis

fBodyGyro.meanFreq...Y	Mean of mean of  body gyro frequency signals  in frequency domain across y axis

fBodyGyro.meanFreq...Z	Mean of mean of  body gyro frequency signals  in frequency domain across z axis

fBodyAccMag.mean..	Mean of mean of  body acceleration signal magnitude in frequency domain 

fBodyAccMag.std..	Mean of Standard Deviation of  body acceleration signal magnitude in frequency domain 

fBodyAccMag.meanFreq..	Mean of mean of  body acceleration frequency signal magnitude in frequency domain 

fBodyBodyAccJerkMag.mean..	Mean of mean of  body acceleration jerk signal magnitude in frequency domain 

fBodyBodyAccJerkMag.std..	Mean of Standard Deviation of  body acceleration jerk signal magnitude in frequency domain 

fBodyBodyAccJerkMag.meanFreq..	Mean of mean of  body acceleration jerk frequency signal magnitude in frequency domain 

fBodyBodyGyroMag.mean..	Mean of mean of  body gyro signal magnitude  in frequency domain 

fBodyBodyGyroMag.std..	Mean of Standard Deviation of  body gyro signal magnitude  in frequency domain 

fBodyBodyGyroMag.meanFreq..	Mean of mean of  body gyro frequency signal magnitude  in frequency domain 

fBodyBodyGyroJerkMag.mean..	Mean of mean of  body gyro jerk signal magnitude  in frequency domain 

fBodyBodyGyroJerkMag.std..	Mean of Standard Deviation of  body gyro jerk signal magnitude  in frequency domain 

fBodyBodyGyroJerkMag.meanFreq..	Mean of mean of  body gyro jerk frequency signal magnitude  in frequency domain 


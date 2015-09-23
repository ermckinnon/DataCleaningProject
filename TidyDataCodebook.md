# Code Book for tidydata.txt File
The r script file in this repository -  run_analysis.R  - produces an text file called tidydata.txt. This text file contains 180 observations of 81 variables - 2 identifier variables and 79 feature variables. Taking each in turn.

#Identifier variables
There are two identifier variables:
Subject - represents each unique volunteer who took part in trial and collected data. There were 30 and this variable is an integer from 1 to 30.
Activity - represents the activity that the subject was doing while carrying their phone. There are 6 activities:
WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. This variable is a string of characters.

#Feature Variables
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ). Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

Tidydata contains summary means of the mean and standard deviation of each feature. These means have been calculated for each subject across all instances of activity. Detailed variable Names follow - all variables are numeric.





# Variable Names and Desciptions



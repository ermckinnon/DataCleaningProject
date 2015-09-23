# Code Book for TidyData File
The r script file in this repository -  run_analysis.R  - produces an text file called tidydata.txt. This text file contains 180 observations of 81 variables - 2 identifier variables and 79 feature variables. Taking each in turn.

Identifier variables
There are two identifier variables:
Subject - represents each unique volunteer who took part in trial and collected data. There were 30 and this variable is an integer from 1 to 30.
Activity - represents the activity that the subject was doing while carrying their phone. There are 6 activities:
WALKING
2	2	WALKING_UPSTAIRS
3	3	WALKING_DOWNSTAIRS
4	4	SITTING
5	5	STANDING
6	6	LAYING

Feature Variables

Some backgound on the variables:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 



# Variable Names and Desciptions



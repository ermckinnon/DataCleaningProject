# DataCleaningProject
This is a repository for Data Cleaning Course Project
This R script file run_analysis.R processes the Samsung data set at the link below. 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
In order for the script to work you need to store the data in your working directory for R
The folder with all the data "UCI HAR Dataset" must be in your working directory.
The R script performs the following process:
-	Merges the training and the test sets to create a single dataset
-	Coercing all feature names to valid R names
o	The feature names are scientifically complex so a full codebook is also provided
-	Extracts only measurements on the mean and standard deviation for each measurement
o	In practive this features with “mean” and “std” in the name are extracted
-	Labels activities names – walking, standing etc
-	From this dataset a tidy summary data set is produced based on
o	The mean of each feature for each subject and each activity
-	The tidy dataset is written as a text file into your working directory.

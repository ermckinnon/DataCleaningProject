# DataCleaningProject
This is a repository for the Coursera Data Cleaning Course Project. The R script file run_analysis.R processes the Samsung data set at the following link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

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


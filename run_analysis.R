# Data Cleaning Course Project
# This script processes the Samsung data set at the link below. 
# Data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
# The folder with all the data "UCI HAR Dataset" must be in your working directory

# Load Librares
library(plyr)
library(data.table)
library(dplyr)

# Read Labels and create a feature label 'mask' to select means and standard deviation features
feature_labels <- t(read.table("UCI HAR Dataset/features.txt")) # Read and transpose feature labels
feature_labels = feature_labels[-1,] # Delete first row to leave just feature labels
feature_labels <- make.names(feature_labels,unique = TRUE) # Coerce into Valid R names
mask <- c(grep("mean",feature_labels),grep("std",feature_labels)) # Create selection mask for mean and std
mask <- sort(mask, decreasing = FALSE) # Sort mask in ascending order to cluster in same order as orginal data
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt") # Read Activity Labels

# Read and Label Test data Set
raw_test_data <- read.table("UCI HAR Dataset/test/X_test.txt",col.names=feature_labels)
raw_test_data <- raw_test_data[,mask] # Extract only means and standard deviations
raw_test_labels <- read.table("UCI HAR Dataset/test/y_test.txt",col.names="activity")
raw_subject_test_data <- read.table("UCI HAR Dataset/test/subject_test.txt",col.names="subject")
labelled_test_data <- cbind(raw_subject_test_data,raw_test_labels,raw_test_data)

# Read and Label Training data Set
raw_train_data <- read.table("UCI HAR Dataset/train/X_train.txt",col.names=feature_labels)
raw_train_data <- raw_train_data[,mask] # Extract only means and standard deviations
raw_train_labels <- read.table("UCI HAR Dataset/train/y_train.txt",col.names="activity")
raw_subject_train_data <- read.table("UCI HAR Dataset/train/subject_train.txt",col.names="subject")
labelled_train_data <-cbind(raw_subject_train_data,raw_train_labels,raw_train_data)

# Merge Test and Training datasets together having labelled them both
merged_data <- rbind(labelled_test_data,labelled_train_data)

# Convert activities variable to a factor variable
merged_data$activity <- factor(merged_data$activity,levels = activity_labels$V1, labels=activity_labels$V2)

# Calculate the means of each function grouped by subject and activity and store in a new data frame
tidydata <- merged_data %>%
  group_by(subject,activity) %>%
  summarise_each(funs(mean))

# Export the Tidy Data dataframe into a text file in working directory
write.table(tidydata,"tidydata.txt",row.name=FALSE) 

# End Script

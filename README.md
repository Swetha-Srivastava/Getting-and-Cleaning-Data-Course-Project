# Getting-and-Cleaning-Data-Course-Project

## This project contains:
* CodeBook.md describes the content of the tidy dataset.
* run_analysis.R is the R script to create the tidy dataset.
* tidy_dataset.txt is the tidy dataset with the average of each variable for each activity and each subject.
* README.md is this file to explain the analysis steps and list of files for the project.

## Steps to create the tidy dataset:
The R script run_analysis.R will create the tidy data set from the source data. It retrieves the source data set and transforms it to the final data set by implementing the following steps:
* Download and unzip the source data
* Read features data and choose the variables needed - mean() and std()
* Read activity labels
* Read train and test data to extract only the measurements on the mean and standard deviation
* Assign varibale names from the features names
* Add activityId and subjectId to the train and test data
* Merge train and test data into one dataset
* Add activity name by merging with activity labels dataset using activityId
* Caculate averages by activity & subject. Order by activity & subject
* Write the data set to the tidy_dataset.txt file.

 run_analysis.R was used to create the tidy_dataset.txt in this repository. R version used is 3.4.1.

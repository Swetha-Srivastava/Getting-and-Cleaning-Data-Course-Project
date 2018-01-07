# Code book for Coursera Getting and Cleaning Data Course Project

This is the code book for the dataset tidy_dataset.txt file in this repository. See the README.md file of this repository for more information on this dataset.

The document is in two parts: Data Variables of the tidy dataset and the Transformations applied on source data to obtain the tody dataset.

## Data

The tidy_dataset.txt data file is a text file, containing white-space separated values.

The first row contains the names of the variables as listed below. Each following row contains averaged measurements for a given activity and subject and activity.

### Identifiers 

* subjectID
Subject identifier, integer, ranges from 1 to 30.

* activityID
Activity identifier, integer, ranges from 1 to 6.

* activityName
Activity name, string with 6 possible values:
  *WALKING: subject was walking
  *WALKING_UPSTAIRS: subject was walking upstairs
  *WALKING_DOWNSTAIRS: subject was walking downstairs
  *SITTING: subject was sitting
  *STANDING: subject was standing
  *LAYING: subject was laying

### Averages of measurements 

All measurements are floating-point values, normalised and bounded within [-1,1].

* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tGravityAccMag-mean()
* tGravityAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()

## Transformations 

The zip file containing the source data is located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The following transformations were applied to the source data:
1.  The training and test sets were merged to create one data set.
2.  The measurements on the mean and standard deviation (i.e. containing the strings mean() and std()) were extracted for each measurement, and the others were discarded.
3.  The activity identifiers (originally coded as integers between 1 and 6) were used to get descriptive activity names.
4.  The variable names were added to the dataset using features text file.
5.  From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject.

The collection of the source data and the transformations listed above were implemented by the run_analysis.R R script (see README.md file for more instructions).

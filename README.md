# Intro
This respository is a result of a final project of the course getting_n_cleaning_data.

The goal is merge two datasets(test and train) exporting the mean of all variables grouped by the variables activity and subject. These files comes from the follow url:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

# How it works

- You must R enviroment installed in your computer 3.1.2
- Open the R console
- source the file run_analysis.R. Eg. source("./run_analysis.R")
- load library dplyr. Eg. library(dplry)
- run the function tidyData. WARNING: It expects the file unzipped in the folder [work_diretory]/'UCI HAR Dataset'

# Code Book 
To get more information about the variables you can look into the file README.txt that is found in the zip file

This scripts returns a data.table with the follow variables: 

  activity: Activity name
  
  subject: Unique ID of the person which executed some activity
  
  tBodyAcc-mean()-X
  
  tBodyAcc-mean()-Y
  
  tBodyAcc-mean()-Z
  
  tBodyAcc-std()-X
  
  tBodyAcc-std()-Y
  
  tBodyAcc-std()-Z
  
  tGravityAcc-mean()-X
  
  tGravityAcc-mean()-Y
  
  tGravityAcc-mean()-Z
  
  tGravityAcc-std()-X
  
  tGravityAcc-std()-Y
  
  tGravityAcc-std()-Z
  
  tBodyAccJerk-mean()-X
  
  tBodyAccJerk-mean()-Y
  
  tBodyAccJerk-mean()-Z
  
  tBodyAccJerk-std()-X
  
  tBodyAccJerk-std()-Y
  
  tBodyAccJerk-std()-Z
  
  tBodyGyro-mean()-X
  
  tBodyGyro-mean()-Y
  
  tBodyGyro-mean()-Z
  
  tBodyGyro-std()-X
  
  tBodyGyro-std()-Y
  
  tBodyGyro-std()-Z
  
  tBodyGyroJerk-mean()-X
  
  tBodyGyroJerk-mean()-Y
  
  tBodyGyroJerk-mean()-Z
  
  tBodyGyroJerk-std()-X
  
  tBodyGyroJerk-std()-Y
  
  tBodyGyroJerk-std()-Z
  
  tBodyAccMag-mean()
  
  tBodyAccMag-std()
  
  tGravityAccMag-mean()
  
  tGravityAccMag-std()
  
  tBodyAccJerkMag-mean()
  
  tBodyAccJerkMag-std()
  
  tBodyGyroMag-mean()
  
  tBodyGyroMag-std()
  
  tBodyGyroJerkMag-mean()
  
  tBodyGyroJerkMag-std()
  
  fBodyAcc-mean()-X
  
  fBodyAcc-mean()-Y
  
  fBodyAcc-mean()-Z
  
  fBodyAcc-std()-X
  
  fBodyAcc-std()-Y
  
  fBodyAcc-std()-Z
  
  fBodyAcc-meanFreq()-X
  
  fBodyAcc-meanFreq()-Y
  
  fBodyAcc-meanFreq()-Z
  
  fBodyAccJerk-mean()-X
  
  fBodyAccJerk-mean()-Y
  
  fBodyAccJerk-mean()-Z
  
  fBodyAccJerk-std()-X
  
  fBodyAccJerk-std()-Y
  
  fBodyAccJerk-std()-Z
  
  fBodyAccJerk-meanFreq()-X
  
  fBodyAccJerk-meanFreq()-Y
  
  fBodyAccJerk-meanFreq()-Z
  
  fBodyGyro-mean()-X
  
  fBodyGyro-mean()-Y
  
  fBodyGyro-mean()-Z
  
  fBodyGyro-std()-X
  
  fBodyGyro-std()-Y
  
  fBodyGyro-std()-Z
  
  fBodyGyro-meanFreq()-X
  
  fBodyGyro-meanFreq()-Y
  
  fBodyGyro-meanFreq()-Z
  
  fBodyAccMag-mean()
  
  fBodyAccMag-std()
  
  fBodyAccMag-meanFreq()
  
  fBodyBodyAccJerkMag-mean()
  
  fBodyBodyAccJerkMag-std()
  
  fBodyBodyAccJerkMag-meanFreq()
  
  fBodyBodyGyroMag-mean()
  
  fBodyBodyGyroMag-std()
  
  fBodyBodyGyroMag-meanFreq()
  
  fBodyBodyGyroJerkMag-mean()
  
  fBodyBodyGyroJerkMag-std()
  
  fBodyBodyGyroJerkMag-meanFreq()
  
  angle(tBodyAccMean,gravity)
  
  angle(tBodyAccJerkMean),gravityMean)
  
  angle(tBodyGyroMean,gravityMean)
  
  angle(tBodyGyroJerkMean,gravityMean)
  
  angle(X,gravityMean)
  
  angle(Y,gravityMean)
  
  angle(Z,gravityMean)
  

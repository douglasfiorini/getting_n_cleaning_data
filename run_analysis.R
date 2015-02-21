## Load and tidy data from UCI HAR Dataset.
## This script assumes that all files is found in '<SCRIPT_FOLDER>/UCI HAR Dataset'
tidyData <- function(){
  
  DATA_DIRECTORY <- './UCI HAR Dataset';
  TEST_DIRECTORY <- 'test';
  TRAIN_DIRECTORY <- 'train';

  # Load features list
  tblFeatures <- read.delim(file="UCI HAR Dataset/features.txt", sep = "", header = F);
  # Boolean vector that says which column is Mean or Std
  boolVectMeanAndStd <- grepl(pattern = ".*[mM]ean.*$|.*[sS]td.*$", x = tblFeatures$V2);
  # Load activity labels
  tblActivityLabels <- read.delim(file="UCI HAR Dataset/activity_labels.txt", sep = "", header = F, stringsAsFactors=FALSE)
  
  loadData <- function(directoryName, fileName){
    #load file
    filePath <- paste(DATA_DIRECTORY, directoryName, fileName, sep="/");
    tbl <- read.delim(file=filePath, sep = "", header = F);
    # remove unnecessary variables(keep just the Mean an Std)
    tbl <- tbl[,boolVectMeanAndStd];
    # create header names
    names(tbl) <- tblFeatures[boolVectMeanAndStd,2];
    # return data loaded
    tbl;
  }
  
  # Add subject col into dataFrame
  addSubjectCol <- function(df, directoryName, fileName){
    filePath <- paste(DATA_DIRECTORY, directoryName, fileName, sep="/"); 
    tbl <- read.delim(file=filePath, sep = "", header = F);
    df$subject <- tbl[,1];
    df;
  }
  
  # Add activity col into dataFrame, its going to be a factor column 
  addActivityCol <- function(df, directoryName, fileName){
    filePath <- paste(DATA_DIRECTORY, directoryName, fileName, sep="/"); 
    tbl <- read.delim(file=filePath, sep = "", header = F);
    df$activity <- factor(tbl$V1, levels = tblActivityLabels$V1, labels=tblActivityLabels$V2 );
    df;
  }
  
  
  testData <- loadData(TEST_DIRECTORY, 'X_test.txt') %>%
    addSubjectCol(directoryName = TEST_DIRECTORY, fileName = 'subject_test.txt') %>%
    addActivityCol(directoryName = TEST_DIRECTORY, fileName = 'y_test.txt');
  
  
  trainData <- loadData(TRAIN_DIRECTORY, 'X_train.txt') %>%
    addSubjectCol(directoryName = TRAIN_DIRECTORY, fileName = 'subject_train.txt') %>%
    addActivityCol(directoryName = TRAIN_DIRECTORY, fileName = 'y_train.txt');
  
  
  datamerged <- rbind(testData,trainData);
  #group by activity and subject, subsequently apply mean for every column
  datamergedSummarised <- summarise_each(group_by(datamerged, activity, subject), funs(mean));
  
  datamergedSummarised;
}

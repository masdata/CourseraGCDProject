# 1. Merge training and test sets to create one data set.
# Subject, X and Y values for both train and test sets
load_to_dt <- function(path){
  return(data.table(read.table(path)))
}
subject_train <- load_to_dt("./UCI HAR Dataset/train/subject_train.txt")
subject_test <- load_to_dt("./UCI HAR Dataset/test/subject_test.txt")
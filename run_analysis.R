# 1. Merge training and test sets to create one data set.

# Subject, X and Y values for both train and test sets
library(data.table)
load_to_dt <- function(path){
  return(data.table(read.table(path)))
}
subject_train <- load_to_dt("./UCI HAR Dataset/train/subject_train.txt")
subject_test <- load_to_dt("./UCI HAR Dataset/test/subject_test.txt")
x_train <- load_to_dt("./UCI HAR Dataset/train/X_train.txt")
x_test <- load_to_dt("./UCI HAR Dataset/test/X_test.txt")
y_train <- load_to_dt("./UCI HAR Dataset/train/y_train.txt")
y_test <- load_to_dt("./UCI HAR Dataset/test/y_test.txt")

# merge
subject <- rbind(subject_train, subject_test)
data <- rbind(x_train, x_test)

head(data)
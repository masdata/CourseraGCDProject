# Getting & Cleaning Data Project

## Project Objective
This project processes activity data recorded by 30 participants wearing Samsung Galaxy S phones.  The full description of the dataset is found below:
>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The given data is filtered to only the mean and standard deviations of the recorded parameters.  Additionally, labels are added for each activity and feature.

## Running the project
First, the dataset must be downloaded and extracted into the working directory.  The dataset may be downloaded here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Then, simply run the file `run_analysis.R`.  The tidy dataset will be output in the working directory as `tidy_data.csv`.

## Process of analysis
The data is provided in multiple separate files, and a number of steps must be taken to create the final dataset.
1. The training and test datasets are merged to create a single dataset of the computed measurements.  
2. This dataset is filtered to only measurements representing mean or standard deviation.  
3. The authors' provided file `activity_labels.txt` is used to add a column of activity labels to the dataset.  
4. The authors' provided file `features.txt` is used to replace the dataset's column names with descriptive names corresponding to each computed measurement.  
5. The tidy dataset is written to a comma-separated-values (.csv) file.  
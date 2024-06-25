# Getting and Cleaning Data Course Project: Data Science Specialization (JHU)
This repository houses the R script run_analysis.R, which conducts the analysis specified in the project requirements. The aim of this project is to showcase the capability to gather, manipulate, and clean a dataset for subsequent analysis. The data utilized in this project is sourced from the accelerometers of the Samsung Galaxy S smartphone.

## Files in this Repository
1. `run_analysis.R`: This R script performs the following steps:

    i. Merges the training and test sets to create one data set.
    
    ii. Extracts only the measurements on the mean and standard deviation for each measurement.
    
    iii. Uses descriptive activity names to name the activities in the data set.
    
    iv. Appropriately labels the data set with descriptive variable names.
    
    v. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

2. `CodeBook.md`: This file describes the variables, the data, and any transformations or work that was performed to clean up the data.

3. `tidy_data.txt`: This file contains the final tidy data set with the average of each variable for each activity and each subject.

## How to run
1. Download the data and extract in your working directory
2. Run de script with a development environment, i.e.: RStudio

## About the Data
The data used in this project were collected from the accelerometers of the Samsung Galaxy S smartphone. A full description of the data is available at the following link: [Human Activity Recognition Using Smartphones](https://archive.ics.uci.edu/dataset/240/human+activity+recognition+using+smartphones).

## Code Book
For details about the variables, data, and transformations used in this analysis, please refer to the CodeBook.md file in this repository.

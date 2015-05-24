# Getting and Cleaning Data
Repo for the course Project of "The Data Scientist's Toolbox" - "Getting and Cleaning Data"-Course from Coursera


The purpose of this project is to prepare tidy data that can be used for later analysis.
Data Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The requirements for the R script "run_analysis.R" is the following: 

1.  Merges the training and the test sets to create one data set.

2.  Extracts only the measurements on the mean and standard deviation for each measurement.

3.  Uses descriptive activity names to name the activities in the data set

4.  Appropriately labels the data set with descriptive variable names. 

5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


The R-script does this within 5 Steps (Each step is commented in run_analysis.R):

0. (Pre-Step) - Load data
Working directory should contain relevant data (UCI HAR Dataset)
Data is loaded into R then

1. Merging and cleaning the data (test & train data separately)
E. g. for test data the provided datasets "test_label", "subject_test" and "X_test" are put together.

2. Combining test & train data to one data set and filter on relevant attributes
Train and test data of step 1 are brought together, and relevant attributes are filtered.

3. Creates a second, independent and tidy data set with the average of each relevant variable for dimensions activity and subject
Data is aggregated in order to get average information for activity and subject.

4. Write txt-file with final data for the project submission txt-file, created with write.table()-function


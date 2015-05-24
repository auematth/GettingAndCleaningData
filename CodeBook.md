# Code Book

Description of variables of the final data set as well as transformations to clean up the data 

Final Data Set / Variables:

Dimensions:

- activity_id   (Id of performed activity from 1 to 6)
- activity_desc  (Description or performed activity)
- subject_id     (Subject/Person_id 1 to 6)

Metrics:

(The following variables are mean values for activity / subject;
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions;
'_mean_' stands for mean value, '_std_' for standard deviation value)
std(): Standard deviation):
- tBodyAcc_mean_X  
- tBodyAcc_mean_Y	 
- tBodyAcc_mean_Z  
- tBodyAcc_std_X   
- tBodyAcc_std_Y
- tBodyAcc_std_Z  
- tGravityAcc_mean_X
- tGravityAcc_mean_Y 
- tGravityAcc_mean_Z 
- tGravityAcc_std_X
- tGravityAcc_std_Y
- tGravityAcc_std_Z
- tBodyAccJerk_mean_X
- tBodyAccJerk_mean_Y
- tBodyAccJerk_mean_Z
- tBodyAccJerk_std_X
- tBodyAccJerk_std_Y
- tBodyAccJerk_std_Z
- tBodyGyro_mean_X
- tBodyGyro_mean_Y
- tBodyGyro_mean_Z
- tBodyGyro_std_X
- tBodyGyro_std_Y
- tBodyGyro_std_Z
- tBodyGyroJerk_mean_X
- tBodyGyroJerk_mean_Y
- tBodyGyroJerk_mean_Z
- tBodyGyroJerk_std_X
- tBodyGyroJerk_std_Y
- tBodyGyroJerk_std_Z
- tBodyAccMag_mean
- tBodyAccMag_std
- tGravityAccMag_mean
- tGravityAccMag_std
- tBodyAccJerkMag_mean
- tBodyAccJerkMag_std
- tBodyGyroMag_mean
- tBodyGyroMag_std
- tBodyGyroJerkMag_mean
- tBodyGyroJerkMag_std
- fBodyAcc_mean_X
- fBodyAcc_mean_Y
- fBodyAcc_mean_Z
- fBodyAcc_std_X
- fBodyAcc_std_Y
- fBodyAcc_std_Z
- fBodyAcc_meanFreq_X
- fBodyAcc_meanFreq_Y
- fBodyAcc_meanFreq_Z
- fBodyAccJerk_mean_X
- fBodyAccJerk_mean_Y
- fBodyAccJerk_mean_Z
- fBodyAccJerk_std_X
- fBodyAccJerk_std_Y
- fBodyAccJerk_std_Z
- fBodyAccJerk_meanFreq_X
- fBodyAccJerk_meanFreq_Y
- fBodyAccJerk_meanFreq_Z
- fBodyGyro_mean_X
- fBodyGyro_mean_Y
- fBodyGyro_mean_Z
- fBodyGyro_std_X
- fBodyGyro_std_Y
- fBodyGyro_std_Z
- fBodyGyro_meanFreq_X
- fBodyGyro_meanFreq_Y
- fBodyGyro_meanFreq_Z
- fBodyAccMag_mean
- fBodyAccMag_std
- fBodyAccMag_meanFreq
- fBodyBodyAccJerkMag_mean
- fBodyBodyAccJerkMag_std
- fBodyBodyAccJerkMag_meanFreq
- fBodyBodyGyroMag_mean
- fBodyBodyGyroMag_std
- fBodyBodyGyroMag_meanFreq
- fBodyBodyGyroJerkMag_mean
- fBodyBodyGyroJerkMag_std
- fBodyBodyGyroJerkMag_meanFreq
- angletBodyAccMean_gravity
- angletBodyAccJerkMean_gravityMean
- angletBodyGyroMean_gravityMean
- angletBodyGyroJerkMean_gravityMean
- angleX_gravityMean
- angleY_gravityMean
- angleZ_gravityMean


Transformations used for claning the data (R functions)

- "merge" in order to merge activity labels
- "data.frame" in order to put activity labels and row data
- "rbind" in order to combine test and training data
- "grepl" in order to filter on relevant attributs containing "mean" or "std" (no real transformation)
- "aggregate" in order to calculate mean values over all attributes


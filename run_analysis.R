
## The Data Science Track - Getting and Cleaning Data
##  Course Project / May 24th, 2015

## Pre-Step: Load data
# Working directory should contain relevant data (UCI HAR Dataset)

# Read data

X_test <- read.table("test/X_test.txt", quote="\"")
X_train <- read.table("train/X_train.txt", quote="\"")
y_test <- read.table("test/y_test.txt", quote="\"")
y_train <- read.table("train/y_train.txt", quote="\"")
subject_test <- read.table("test/subject_test.txt", quote="\"")
subject_train <- read.table("train/subject_train.txt", quote="\"")
features <- read.table("features.txt", quote="\"")
activity_labels <- read.table("activity_labels.txt", quote="\"")



## Step 1: Merging and cleaning data (test & train data separately)

# Merge activity labels and rename columns
test_label <- merge(y_test, activity_labels, by.x="V1", by.y="V1", all=TRUE)
names(test_label)[1] <- "activity_id"
names(test_label)[2] <- "activity_desc"
train_label <- merge(y_train, activity_labels, by.x="V1", by.y="V1", all=TRUE)
names(train_label)[1] <- "activity_id"
names(train_label)[2] <- "activity_desc"

# Clean workspace / remove obsolete data 
rm(activity_labels)
rm(y_test)
rm(y_train)

# Give names to subject columns
names(subject_test)[1] <- "subject_id"
names(subject_train)[1] <- "subject_id"

# Clean feature descriptions
features$V2 <- gsub("-", "_", features$V2)
features$V2 <- gsub(",", "_", features$V2)
features$V2 <- gsub("\\(\\)", "", features$V2)
features$V2 <- gsub("\\)", "", features$V2)
features$V2 <- gsub("\\(", "", features$V2)

# Name colums of data set / take cleaned feature description
for(i in 1:561) {
  names(X_test)[i] <- as.character(features[i, 2])
  names(X_train)[i] <- as.character(features[i, 2])
}
rm(i) # Clean obsolete object

# Add colums of label / subject to data
test_data <- data.frame(test_label, subject_test, X_test)
train_data <- data.frame(train_label, subject_train, X_train)



## Step 2: Combining test & train data to one data set and filter on relevant attributes

# Combine both tables to one table
data <- rbind(test_data, train_data)

# Filter on relevant columns: Only mean- and std. deviation
features$V3 <- (grepl("mean", features$V2) | grepl("std", features$V2) | grepl("Mean", features$V2) | grepl("Std", features$V2))

# Collect relevant attributes 
rel_attributes <- as.vector(features$V2[features$V3 == TRUE])

# Keep only relevant attributes of data set
keep_variables <- c("activity_id", "activity_desc", "subject_id", rel_attributes)

data_sub <- data[keep_variables]



## Step 3: Creates a second, independent and tidy data set with the average of each relevant variable 
##          for dimensions activity and subject

# Use aggregate-function to calculate mean for each relevant variable
agg <- aggregate(data_sub[rel_attributes], list(data_sub$activity_id, data_sub$activity_desc, data_sub$subject_id), mean)
# Rename dimensions
names(agg)[1] <- "activity_id"
names(agg)[2] <- "activity_desc"
names(agg)[3] <- "subject_id"

# Use plyr to order data (optional) 
library(plyr)
agg <- arrange(agg, activity_id, subject_id)



## Step 4: Write txt-file, created with write.table()-function

write.table(agg, file = "final_dataset.txt", sep="\t", row.names = FALSE)



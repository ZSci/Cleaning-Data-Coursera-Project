##############################################
#
#	Title:		Cleaning and tidying up a dataset
#	Author:		Kalyan
#	Platform:	R(3.4.3) x86_64-w64-mingw32/x64 (64-bit)
#	Date:		15 February 2018
#	
#	Description: 
#	- Aquires dataset from UCI website for Human Activity Recognition
#	- Merges all the different data text files into one dataset
#	- Labels all the columns with their respective feature names
#	- Replaces the activity ID with the acticity name for readability
#	- Extracts a dataset containing the activityID, subjectID, mean and standard deviation values
#	- Creates a second dataset with average values of each feature for each activity for each subject
#
##############################################


#Download the dataset
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "DATA.zip")

#Import all the data into tables
x_tr <- read.table("./UCI_HAR_Dataset/train/X_train.txt")
y_tr <- read.table("./UCI_HAR_Dataset/train/y_train.txt")
s_tr <- read.table("./UCI_HAR_Dataset/train/subject_train.txt")

x_ts <- read.table("./UCI_HAR_Dataset/test/X_test.txt")
y_ts <- read.table("./UCI_HAR_Dataset/test/y_test.txt")
s_ts <- read.table("./UCI_HAR_Dataset/test/subject_test.txt")

#import the feature names
features <- as.vector(read.table("./UCI_HAR_Dataset/features.txt")[, 2])

#extract only mean and standard deviaton indices
mean_std_idx <- grep("mean|std", features)
x_tr <- x_tr[, mean_std_idx]
x_ts <- x_ts[, mean_std_idx]

#import the ;abels for data
labels <- read.table("./UCI_HAR_Dataset/activity_labels.txt")

#replace activityID with activity for each row
y_ed_tr <- as.vector(sapply(y_tr[, 1], function(sample){labels[sample, 2]} ))
y_ed_ts <- as.vector(sapply(y_ts[, 1], function(sample){labels[sample, 2]} ))

#merge data and edit the name of variables(columns)
train_set <- cbind(s_tr, y_ed_tr, x_tr)
colnames(train_set) <- c("subject", "activity", features[mean_std_idx])

test_set <- cbind(s_ts, y_ed_ts, x_ts)
colnames(test_set) <- c("subject", "activity", features[mean_std_idx])

neat_data <- rbind(train_set, test_set)

#extract another dataset by calculating the mean for each activity for each subject
library(dplyr)
final_set <- neat_data %>% group_by(subject, activity) %>% summarise_all(mean)

#save the final dataset into a .txt file
write.table(final_set, "./tidy_data_set.txt", row.name=FALSE)
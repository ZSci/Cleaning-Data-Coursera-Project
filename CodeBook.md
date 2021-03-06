# Code Book for UCI HAR cleaned Dataset
This codebook is for the UCI HAR Datset cleaned as per the specifications given in the README.md file

## Labels

- Activity: One of the following six for which the readings were taken:
  - `WALKING`
  - `WALKING_UPSTAIRS`
  - `WALKING_DOWNSTAIRS`
  - `SITTING`
  - `STANDING`
  - `LAYING`
- Subject: An ID for the test subject who performed each of the six activities

## Features
_The feature description as provided by HAR in features_info.txt_

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
These time domain signals (prefix 't' to denote time) were captured at a constant rate and a noise filter was applied. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ).

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The following features have been extracted and the average of these for each activity for each subject were computed

`tBodyAcc-mean()-X`                
`tBodyAcc-mean()-Y`             
`tBodyAcc-mean()-Z`                
`tBodyAcc-std()-X`             
`tBodyAcc-std()-Y`                 
`tBodyAcc-std()-Z`              
`tGravityAcc-mean()-X`      
`tGravityAcc-mean()-Y`          
`tGravityAcc-mean()-Z`             
`tGravityAcc-std()-X`       
`tGravityAcc-std()-Y`              
`tGravityAcc-std()-Z`           
`tBodyAccJerk-mean()-X`            
`tBodyAccJerk-mean()-Y`         
`tBodyAccJerk-mean()-Z`            
`tBodyAccJerk-std()-X`          
`tBodyAccJerk-std()-Y`             
`tBodyAccJerk-std()-Z`          
`tBodyGyro-mean()-X`               
`tBodyGyro-mean()-Y`            
`tBodyGyro-mean()-Z`               
`tBodyGyro-std()-X`            
`tBodyGyro-std()-Y`                
`tBodyGyro-std()-Z`             
`tBodyGyroJerk-mean()-X`      
`tBodyGyroJerk-mean()-Y`        
`tBodyGyroJerk-mean()-Z`           
`tBodyGyroJerk-std()-X`        
`tBodyGyroJerk-std()-Y`            
`tBodyGyroJerk-std()-Z`         
`tBodyAccMag-mean()`               
`tBodyAccMag-std()`            
`tGravityAccMag-mean()`       
`tGravityAccMag-std()`           
`tBodyAccJerkMag-mean()`        
`tBodyAccJerkMag-std()`        
`tBodyGyroMag-mean()`            
`tBodyGyroMag-std()`        
`tBodyGyroJerkMag-mean()`            
`tBodyGyroJerkMag-std()`        
`fBodyAcc-mean()-X`           
`fBodyAcc-mean()-Y`             
`fBodyAcc-mean()-Z`                
`fBodyAcc-std()-X`              
`fBodyAcc-std()-Y`                 
`fBodyAcc-std()-Z`         
`fBodyAcc-meanFreq()-X`              
`fBodyAcc-meanFreq()-Y`         
`fBodyAcc-meanFreq()-Z`            
`fBodyAccJerk-mean()-X`         
`fBodyAccJerk-mean()-Y`            
`fBodyAccJerk-mean()-Z`         
`fBodyAccJerk-std()-X`             
`fBodyAccJerk-std()-Y`          
`fBodyAccJerk-std()-Z`        
`fBodyAccJerk-meanFreq()-X`     
`fBodyAccJerk-meanFreq()-Y`        
`fBodyAccJerk-meanFreq()-Z`       
`fBodyGyro-mean()-X`                 
`fBodyGyro-mean()-Y`            
`fBodyGyro-mean()-Z`               
`fBodyGyro-std()-X`             
`fBodyGyro-std()-Y`                
`fBodyGyro-std()-Z`             
`fBodyGyro-meanFreq()-X`           
`fBodyGyro-meanFreq()-Y`       
`fBodyGyro-meanFreq()-Z`           
`fBodyAccMag-mean()`            
`fBodyAccMag-std()`           
`fBodyAccMag-meanFreq()`        
`fBodyBodyAccJerkMag-mean()`         
`fBodyBodyAccJerkMag-std()`         
`fBodyBodyAccJerkMag-meanFreq()`    
`fBodyBodyGyroMag-mean()`       
`fBodyBodyGyroMag-std()`      
`fBodyBodyGyroMag-meanFreq()`       
`fBodyBodyGyroJerkMag-mean()`       
`fBodyBodyGyroJerkMag-std()`        
`fBodyBodyGyroJerkMag-meanFreq()`     

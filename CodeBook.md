---
title: Codebook for "run_analysis.R"
author: Alexey Voskoboynikov
date: 2016-04-03
---

## Project Description
Conversion of the raw data to tiny data. 

##Study design and data processing
Recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. Obtaining raw data from sensors and creating tidy data set with the average of each variable for each activity and each subject.

###Collection of the raw data
from the website:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

downloaded from link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Notes on the original (raw) data 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

##Creating the tidy datafile
"run_analysis.R" script provide tine data in .txt and .csv formats

###Guide to create the tidy data file
run "run_analysis.R" script to obtain tiny_data.txt and tiny_data.csv files in ./CourseProject/ directory

###Cleaning of the data
https://github.com/OldMindFlayer/Getting-and-Cleaning-Data-Course-Project/blob/master/README.md

##Description of the variables in the tiny_data.txt file
 - Dimensions of the dataset: 180 x 68
 - rows: 30 subjects x 6 activities
 - variable names:
 [1] "subject"                 
 [2] "activity"                
 [3] "tBodyAccMean(x)"         
 [4] "tBodyAccMean(y)"         
 [5] "tBodyAccMean(z)"         
 [6] "tBodyAccSD(x)"           
 [7] "tBodyAccSD(y)"           
 [8] "tBodyAccSD(z)"           
 [9] "tGravityAccMean(x)"      
[10] "tGravityAccMean(y)"      
[11] "tGravityAccMean(z)"      
[12] "tGravityAccSD(x)"        
[13] "tGravityAccSD(y)"        
[14] "tGravityAccSD(z)"        
[15] "tBodyAccJerkMean(x)"     
[16] "tBodyAccJerkMean(y)"     
[17] "tBodyAccJerkMean(z)"     
[18] "tBodyAccJerkSD(x)"       
[19] "tBodyAccJerkSD(y)"       
[20] "tBodyAccJerkSD(z)"       
[21] "tBodyGyroMean(x)"        
[22] "tBodyGyroMean(y)"        
[23] "tBodyGyroMean(z)"        
[24] "tBodyGyroSD(x)"          
[25] "tBodyGyroSD(y)"          
[26] "tBodyGyroSD(z)"          
[27] "tBodyGyroJerkMean(x)"    
[28] "tBodyGyroJerkMean(y)"    
[29] "tBodyGyroJerkMean(z)"    
[30] "tBodyGyroJerkSD(x)"      
[31] "tBodyGyroJerkSD(y)"      
[32] "tBodyGyroJerkSD(z)"      
[33] "tBodyAccMagMean"         
[34] "tBodyAccMagSD"           
[35] "tGravityAccMagMean"      
[36] "tGravityAccMagSD"        
[37] "tBodyAccJerkMagMean"     
[38] "tBodyAccJerkMagSD"       
[39] "tBodyGyroMagMean"        
[40] "tBodyGyroMagSD"          
[41] "tBodyGyroJerkMagMean"    
[42] "tBodyGyroJerkMagSD"      
[43] "fBodyAccMean(x)"         
[44] "fBodyAccMean(y)"         
[45] "fBodyAccMean(z)"         
[46] "fBodyAccSD(x)"           
[47] "fBodyAccSD(y)"           
[48] "fBodyAccSD(z)"           
[49] "fBodyAccJerkMean(x)"     
[50] "fBodyAccJerkMean(y)"     
[51] "fBodyAccJerkMean(z)"     
[52] "fBodyAccJerkSD(x)"       
[53] "fBodyAccJerkSD(y)"       
[54] "fBodyAccJerkSD(z)"       
[55] "fBodyGyroMean(x)"        
[56] "fBodyGyroMean(y)"        
[57] "fBodyGyroMean(z)"        
[58] "fBodyGyroSD(x)"          
[59] "fBodyGyroSD(y)"          
[60] "fBodyGyroSD(z)"          
[61] "fBodyAccMagMean"         
[62] "fBodyAccMagSD"           
[63] "fBodyBodyAccJerkMagMean" 
[64] "fBodyBodyAccJerkMagSD"   
[65] "fBodyBodyGyroMagMean"    
[66] "fBodyBodyGyroMagSD"      
[67] "fBodyBodyGyroJerkMagMean"
[68] "fBodyBodyGyroJerkMagSD"

Classes:
 [1] "subject" - integer
 
 [2] "activity" - character
 
 [3-68] other - double

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

###Variable 1 (repeat this section for all variables in the dataset)
Short description of what the variable describes.

Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

####Notes on variable 1:
If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.

##Sources
Sources you used if any, otherise leave out.

##Annex
If you used any code in the codebook that had the echo=FALSE attribute post this here (make sure you set the results parameter to 'hide' as you do not want the results to show again)

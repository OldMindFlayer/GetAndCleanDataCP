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

script "run_analysis.r"                                                  
1) Check the "./CourseProject" directory and (if False) creat it                                      
2) Download and unzip data file                                                                              
3) Read data and creating datasets in variables:                                         
[1] "subject_test"                
[2] "subject_train"               
[3] "X_test"               
[4] "X_train"              
[5] "Y_test"                     
[6] "Y_train"                
[7] "activity_labels"                                                                                       
4) Change variable names of subject and activity dataframes to "subject" and "activity" respectively         
5) Combine [1-6] dataset to form one, witch store in variable "Combo"                                            
6) create a list of variable names and store in variable "n"                                                       
7) select variables in dataset "Combo", witch contain Mean and SD values, and "subject" and "activity" variables, and store them in the dataframe named "ComboMS"                                        
8) change values of "activity" variable from numbers to activity labels from "activity_labels" dataset          
9) apply discriptive variable names to the "ComboMS" dataframe                                               
10) arrange "ComboMS" dataframe by "subject" and "activity" variables                                          
11) create data set with the average of each variable for each activity and each subject, and store it in "ComboGS" dataframe, which is tiby data                            
12) creation of tiny_data file (.txt anf .csv) in the "./CourseProject" directory                             

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
 
Unit of measurement of [1] variable - subject number from 1 to 30        
Unit of measurement of [2] variable - activity label         
Unit of measurement of [3-68] variables normalized and bounded within [-1,1]        

Schema of the names of [3-68] variables:      
t - time                                                    
f - frequency domain signals                                   
Body - body signals                                        
Gravity - gravity signals                                   
Acc - data come from the accelerometer                               
Gyro - data come from the gyroscope                                 
Jerk - Jerk signals                                               
Mag - magnitude of these three-dimensional signals                   
Mean - Mean value                                             
SD - Standard deviation                                           
(x) - X-axial raw signal                                
(y) - Y-axial raw signal                                   
(z) - Z-axial raw signal                                      

Notes on variable [1] ""subject":      
include code of subject from 1 to 30

Notes on variable [2] "activity":      
[1] "walking"               
[2] "walking_upstairs"       
[3] "walking_downstairs"       
[4] "sitting"             
[5] "standing"          
[6] "laying" 

##Sources
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

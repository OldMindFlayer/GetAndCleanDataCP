# Getting-and-Cleaning-Data-Course-Project 
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


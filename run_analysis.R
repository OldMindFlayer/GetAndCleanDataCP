library(dplyr)
library(tidyr)

# check of directory
# if (!file.exists("CourseProject")) {dir.create("CourseProject")}
# setwd("./CourseProject/")

# download and unzip data file
# fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# download.file(fileUrl, destfile = "./getdata-projectfiles-UCI HAR Dataset.zip")
# dateDownloaded<-date()
unzip("./getdata-projectfiles-UCI HAR Dataset.zip")

# read all relevent .txt files
X_test<-read.table("./UCI HAR Dataset/test/X_test.txt") #Test set
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
Y_test<-read.table("./UCI HAR Dataset/test/Y_test.txt") #Test labels
X_train<-read.table("./UCI HAR Dataset/train/X_train.txt") #Training set
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
Y_train<-read.table("./UCI HAR Dataset/train/Y_train.txt") #Training labels
features<-read.table("./UCI HAR Dataset/features.txt") #List of all features
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt") #Links to activity name

# change variable names of subject and activity dfs
colnames(subject_test)<-"subject"
colnames(subject_train)<-"subject"
colnames(Y_test)<-"activity"
colnames(Y_train)<-"activity"

# combining two main dfs with subject and activity dfs
Xtest<-cbind(subject_test,Y_test,X_test)
Xtrain<-cbind(subject_train,Y_train,X_train)
Combo<-tbl_df(rbind(Xtest,Xtrain))

# list of names of selected variables with subject and activity variables
meanStd<-grep("mean[(]|std",features$V2)
meanStdA<-c(1,2,meanStd+2)
n1<-as.character(features$V2)
n<-c("subject","activity", n1[meanStd])

# creation the df of selected variables
ComboMS<-select(Combo,meanStdA)

# change values of activity variable from numbers to labels
act<-sapply(ComboMS$activity, function(x) activity_labels[x,2])
ComboMS$activity<-tolower(as.character(act))

# appling discriptive variable names to df
n<-gsub("[()]","",n)
n<-gsub("-","",n)
n<-gsub("std","SD",n)
n<-gsub("mean","Mean",n)
n<-gsub("X$","(x)",n)
n<-gsub("Y$","(y)",n)
n<-gsub("Z$","(z)",n)
colnames(ComboMS)<-n

# arranging df by subject and activity variables
ComboMS<-arrange(ComboMS, subject, activity)

# data set with the average of each variable for each activity and each subject
ComboGS<-summarise_each(group_by(ComboMS, subject, activity), funs(mean), -subject, -activity)

#creation of tiny_data file (.txt anf .csv)
write.table(ComboGS, "./tiny_data.txt", sep="\t", row.name = FALSE)
# write.csv(ComboGS, "./tiny_data.csv")

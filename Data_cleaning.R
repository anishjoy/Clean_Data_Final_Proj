# Set Appropriate Directory
setwd("C:/Users/Aparna Sathyan//Desktop/Coursera/Cleaning-Data-Final/")

# Download Data and Unzip
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","data.zip")
unzip("data.zip")

# Now read the files
activity<-read.table("./UCI HAR Dataset/activity_labels.txt")
features<-read.table("./UCI HAR Dataset/features.txt")

xtest<-read.table("./UCI HAR Dataset/test/X_test.txt")
ytest<-read.table("./UCI HAR Dataset/test/y_test.txt")
subtest<-read.table("./UCI HAR Dataset/test/subject_test.txt")

xtrain<-read.table("./UCI HAR Dataset/train/X_train.txt")
ytrain<-read.table("./UCI HAR Dataset/train/y_train.txt")
subtrain<-read.table("./UCI HAR Dataset/train/subject_train.txt")
# Load Libraries
library(dplyr)
library(tidyr)
library(reshape2)
#Append the realted datasets together
xdata<-bind_rows(xtrain,xtest)
ydata<-bind_rows(ytrain,ytest)
subdata<-bind_rows(subtrain,subtest)
#Now select only those features from X where there is mean or std literal in the 
#variable name
xdatasel<-xdata[,grep("(mean|std)\\(\\)",features$V2)]

# Clean up teh names to remove "_" "()"
features_names<-grep("(mean|std)\\(\\)",features$V2,value=TRUE)
features_names<-gsub('-mean', 'Mean', features_names)
features_names<- gsub('-std', 'Std', features_names)
features_names <- gsub('[-()]', '', features_names)

#Now bind all columns together
allData<-cbind(subdata,ydata,xdatasel)

# Set the column names
colnames(allData)<-c("subject","activity",features_names)

# Set appropriate labels for Activity and cast subject as factor 

allData$activity <- factor(allData$activity, levels = activity[,1], labels = activity[,2])

allData$subject <- as.factor(allData$subject)

# Now to get the averages and create a tidy data
# Melt the data with just the subject and activity
# Now recast by using mean and the variable name
allData_melted <- melt(allData, id = c("subject", "activity"))

allData_mean <- dcast(allData_melted, subject + activity ~ variable, mean)
# Write to File
write.table(allData_mean, "final_data.txt", row.names = FALSE, quote = FALSE)




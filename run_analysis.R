# Human Activity Recognition Using Smartphones Dataset
# Averages for the variables “mean” and “standard deviation”, 
#grouped according to the “activity” variable and for each subject.

# Reading the rough test files: Measurements; Subjects; and Activities
Measure_test <- read.table ("./UCI HAR Dataset/test/X_test.txt", sep="")
Subjects_test <- read.table ("./UCI HAR Dataset/test/subject_test.txt")
Activities_test <- read.table ("./UCI HAR Dataset/test/y_test.txt")

# Reading the rough training files: Measurements; Subjects; and Activities
Measure_train <- read.table ("./UCI HAR Dataset/train/X_train.txt", sep="")
Subjects_train <- read.table ("./UCI HAR Dataset/train/subject_train.txt")
Activities_train <- read.table ("./UCI HAR Dataset/train/y_train.txt")

# Reading the feature names file
features_names <- read.table ("./UCI HAR Dataset/features.txt")

# Reading the activities names file
activity_labels <-read.table ("./UCI HAR Dataset/activity_labels.txt")

# Naming the variables (columns) for test and training
colnames (Measure_test) <- features_names [ ,2]
colnames (Subjects_test)<- "Subjects"
colnames (Activities_test)<- "Activities"

colnames (Measure_train) <- features_names [ ,2]
colnames (Subjects_train)<- "Subjects"
colnames (Activities_train)<- "Activities"

# Creating the 'TEST' data frame
Tests <- data.frame (c(Subjects_test, Activities_test, Measure_test))
Tests [ ,"Group"] <- rep ("test", nrow(Measure_test)) #Add a variable with the data set (test or
                                                         #training), and name it

# Creating the 'TRAIN' data frame
Train <- data.frame (c(Subjects_train, Activities_train, Measure_train))
Train [ ,"Group"] <- rep ("train", nrow(Measure_train)) #Add a variable with the data set                                
                                                   #(test or training), and name it

# Creating one data set whith 'Tests' and 'Train' data sets
Global.data <- rbind (Tests, Train)

# Recode 'Activities' and 'Subjects' variables to factors
Global.data [ ,"Activities"] <- factor (Global.data [ ,"Activities"], 
                                        levels= activity_labels [ ,1], 
                                        labels= activity_labels [ ,2])

Global.data [ ,"Subjects"] <- as.factor (Global.data [ ,"Subjects"])

# Extracting the measurements on the mean and standard deviation 
# for each measurement
index_means <- grep (pattern = "mean", names (Global.data))
index_sd <- grep (pattern = "std", names (Global.data))
index <- sort (c(index_means, index_sd))
Global.data.meanSd <- Global.data [ ,c (1, 2, 564, index)]
        # Remove the 'mean frequency...' (meanFreq()) variables
index.rm <- grep (pattern = "Freq", names (Global.data.meanSd), invert = TRUE)
Global.data.meanSd <- Global.data.meanSd [ ,index.rm]

# Compute the averages for the variables measured in 'Global.data.meanSd', grouped
# according to the activity (walking, walking upstairs, walking downstairs, 
# sitting, standing, laying) and for each subject.

average.data <- aggregate (Global.data.meanSd [-(1:3)], 
                    Global.data.meanSd [c("Activities", "Subjects")], mean)

# Saving the data frame 'average.data' as csv file
write.table (average.data, file = "./averageData.txt", 
             sep  = ",", row.names = FALSE)

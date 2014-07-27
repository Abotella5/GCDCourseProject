GCDCourseProject
================
1. Read all the necesary files for create de dataset. Using read.table function
    Read: 
    Two files with the measurements (One for trainig group, and another for test group)
		Two files with the activities identifier (For training and test groups)
		Two files with the subjects identifier (For training and test groups)
		A file with the measurement variables names
		A file with de activities names.

2. Name the variables using colnames function

3. Create two data frame, for training and test group, and a new variable "Group", because if we join test an training group, we lost this information.

4. Merge training and test datasets. Using rbind function for this.
 
5. Recode 'Activities' and 'Subjects' variables to factors. Using factor y as.factor functions.
 
6. Extracting the measurements on the mean and standard deviation for each measurement. Selecting the index for this measurements using grep function. This fuction return the indices for the matches for a pattern given. But we was obtained extra results. The pattern "mean" was in variables names don't wanted. We remove this resuls with the grep function again, but with the argument "inverse" now. We selected the variables names without the pattern incorrect ("Frec").

7. Create the dataset with this indices 

8. Create a dataset with the average for each variable, for each activity and for each subject. Using aggregate function for this.
 
9. Save the dataset with the write.table function in txt format.

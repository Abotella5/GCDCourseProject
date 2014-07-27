CODE BOOK
<<<<<<< HEAD

Human Activity Recognition Using Smartphones Dataset
Averages for the variables “mean” and “standard deviation”, grouped according to the “activity” variable and for each subject.


The original rought data, by Anguita, Ghio, Oneto, Parra and Reyes-Ortiz (2012), come from a experiment with 30 subjects who performed 6 activities wearing a smartphone on the waist, literaly, “using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz”. Subjects were randomly assigned to two groups, training group (70% ) and test group (30%).

Mean, standard deviation, median, maximum, minimum, etc. have been estimated for each measurement,  obtaining a total of 561 measurement variables.

We have unified the training and test datasets and we have selected only mean and standard deviation variables, from all 561 measurement variables.

The average  for the variables “mean” and “standard deviation”, grouped according to the “activity” variable and for each subject, has been calculated, on the basis of the last dataset, and  was created the final dataset.

DATASET VARIABLES

 	1. "Activities" : Activities performed for the persons who carried out the experiment.

	1  WALKING
	2  WALKING_UPSTAIRS
	3  WALKING_DOWNSTAIRS
	4  SITTING
	5  STANDING
	6  LAYING
               
2. "Subjects": An identifier of the subject who carried out the experiment.

	  Range: from 1 to 30.

 3 – 68 Measurement variables (66 variables): The original measurements come from the accelerometer (Acc) and gyroscope (Gyro) 3-axial signal (XYZ). The acceleration signal was separate into body and gravity acceleration signals. Therfore, the variable name  "tBodyAcc.mean...X" (for instance)  indicate  the average for each activitity and each subject, for the mean estimated for the body acceleration, in the X axis, in a time domain signal (t).
Also, was obtained Jerk signals (Jerk) and the magnitude of the three-dimensional signals (Mag).
Also, was applied a Fast Furier Transform, producing frecuency domain signals (f).

Another variable name example:  "fBodyAccJerk.std...Y", the average for each activitity and each subject, in the standar deviation, in frecuency domain signal (f), Jerk signal (Jerk) for body acceleration (BodyAcc) in Y axis.

All the measurements are normalized and bounded within [-1,1]

The acceleration signal was measured in standard gravity units “g”, and the angular velocity was measured in radians  / second.




		MESUREMENT VARIABLES NAMES
 
 [3] "tBodyAcc.mean...X"          
 [4] "tBodyAcc.mean...Y"          
 [5] "tBodyAcc.mean...Z"          
 [6] "tBodyAcc.std...X"           
 [7] "tBodyAcc.std...Y"           
 [8] "tBodyAcc.std...Z"           
 [9] "tGravityAcc.mean...X"       
[10] "tGravityAcc.mean...Y"       
[11] "tGravityAcc.mean...Z"       
[12] "tGravityAcc.std...X"        
[13] "tGravityAcc.std...Y"        
[14] "tGravityAcc.std...Z"        
[15] "tBodyAccJerk.mean...X"      
[16] "tBodyAccJerk.mean...Y"      
[17] "tBodyAccJerk.mean...Z"      
[18] "tBodyAccJerk.std...X"       
[19] "tBodyAccJerk.std...Y"       
[20] "tBodyAccJerk.std...Z"       
[21] "tBodyGyro.mean...X"         
[22] "tBodyGyro.mean...Y"         
[23] "tBodyGyro.mean...Z"         
[24] "tBodyGyro.std...X"          
[25] "tBodyGyro.std...Y"          
[26] "tBodyGyro.std...Z"          
[27] "tBodyGyroJerk.mean...X"     
[28] "tBodyGyroJerk.mean...Y"     
[29] "tBodyGyroJerk.mean...Z"     
[30] "tBodyGyroJerk.std...X"      
[31] "tBodyGyroJerk.std...Y"      
[32] "tBodyGyroJerk.std...Z"      
[33] "tBodyAccMag.mean.."         
[34] "tBodyAccMag.std.."          
[35] "tGravityAccMag.mean.."      
[36] "tGravityAccMag.std.."       
[37] "tBodyAccJerkMag.mean.."     
[38] "tBodyAccJerkMag.std.."      
[39] "tBodyGyroMag.mean.."        
[40] "tBodyGyroMag.std.."         
[41] "tBodyGyroJerkMag.mean.."    
[42] "tBodyGyroJerkMag.std.."     
[43] "fBodyAcc.mean...X"          
[44] "fBodyAcc.mean...Y"          
[45] "fBodyAcc.mean...Z"          
[46] "fBodyAcc.std...X"           
[47] "fBodyAcc.std...Y"           
[48] "fBodyAcc.std...Z"           
[49] "fBodyAccJerk.mean...X"      
[50] "fBodyAccJerk.mean...Y"      
[51] "fBodyAccJerk.mean...Z"      
[52] "fBodyAccJerk.std...X"       
[53] "fBodyAccJerk.std...Y"       
[54] "fBodyAccJerk.std...Z"       
[55] "fBodyGyro.mean...X"         
[56] "fBodyGyro.mean...Y"         
[57] "fBodyGyro.mean...Z"         
[58] "fBodyGyro.std...X"          
[59] "fBodyGyro.std...Y"          
[60] "fBodyGyro.std...Z"          
[61] "fBodyAccMag.mean.."         
[62] "fBodyAccMag.std.."          
[63] "fBodyBodyAccJerkMag.mean.." 
[64] "fBodyBodyAccJerkMag.std.."  
[65] "fBodyBodyGyroMag.mean.."    
[66] "fBodyBodyGyroMag.std.."     
[67] "fBodyBodyGyroJerkMag.mean.."
[68] "fBodyBodyGyroJerkMag.std.." 


	TRANSFORMATIONS FOR TIDY DATA

	The original dataset was integrated for:
		Two files with the measurements (One for trainig group, and another for test group)
		Two files with the activities identifier (For training and test groups)
		Two files with the subjects identifier (For training and test groups)
		A file with the measurement variables names
		A file with de activities names.

	We read the 8 files
	Merged activities identifier, subjects identifier and measurements, for training and test groups.
	Merged training and test group in only one dataset
	Named all the variables (subjects, activities and measurements)
	Transformed subjects and activities variables in factors, and assign the activities names as factor labels.
	Select a subset with the the measurements on the mean and standard deviation for each measurement.
	With this subset, computed the average of each variable for each activity and for each subject.
	
=======
>>>>>>> f0bed3a2b05c34033d39474b5734a59f7fe9b357


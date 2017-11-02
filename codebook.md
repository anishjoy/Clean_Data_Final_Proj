
# Code Book

## Data

This code book specifies the how the features that are in final_data.txt

## Identfiers

This given data comtains two identifiers

1. *Subject* : This test ID of the subject
2. *Activity* : This gives the type of activity performed

## Activity Lable

1. *WALKING (value 1)*: subject was walking during the test
2. *WALKING_UPSTAIRS (value 2)*: subject was walking up a staircase during the test
3. *WALKING_DOWNSTAIRS (value 3)*: subject was walking down a staircase during the test
4. *SITTING (value 4)*: subject was sitting during the test
5. *STANDING (value 5)*: subject was standing during the test
6. *LAYING (value 6)*: subject was laying down during the test

## Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAccXYZ
* tGravityAccXYZ
* tBodyAccJerkXYZ
* tBodyGyroXYZ
* tBodyGyroJerkXYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAccXYZ
* fBodyAccJerkXYZ
* fBodyGyroXYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

*Mean*: Mean value
*Std*: Standard deviation

## Features

Given below is the list of features

1. tBodyAccMeanX 
2. tBodyAccMeanY 
3. tBodyAccMeanZ 
4. tBodyAccStdX
5. tBodyAccStdY
6. tBodyAccStdZ
7. tGravityAccMeanX
8. tGravityAccMeanY
9. tGravityAccMeanZ
10. tGravityAccStdX
11. tGravityAccStdY
12. tGravityAccStdZ
13. tBodyAccJerkMeanX
14. tBodyAccJerkMeanY
15. tBodyAccJerkMeanZ
16. tBodyAccJerkStdX
17. tBodyAccJerkStdY
18. tBodyAccJerkStdZ
19. tBodyGyroMeanX
20. tBodyGyroMeanY
21. tBodyGyroMeanZ
22. tBodyGyroStdX
23. tBodyGyroStdY
24. tBodyGyroStdZ
25. tBodyGyroJerkMeanX
26. tBodyGyroJerkMeanY
27. tBodyGyroJerkMeanZ
28. tBodyGyroJerkStdX
29. tBodyGyroJerkStdY
30. tBodyGyroJerkStdZ
31. tBodyAccMagMean
32. tBodyAccMagStd
33. tGravityAccMagMean
34. tGravityAccMagStd
35. tBodyAccJerkMagMean
36. tBodyAccJerkMagStd
37. tBodyGyroMagMean
38. tBodyGyroMagStd
39. tBodyGyroJerkMagMean
40. tBodyGyroJerkMagStd
41. fBodyAccMeanX
42. fBodyAccMeanY
43. fBodyAccMeanZ
44. fBodyAccStdX
45. fBodyAccStdY
46. fBodyAccStdZ
47. fBodyAccJerkMeanX
48. fBodyAccJerkMeanY
49. fBodyAccJerkMeanZ
50. fBodyAccJerkStdX
51. fBodyAccJerkStdY
52. fBodyAccJerkStdZ
53. fBodyGyroMeanX
54. fBodyGyroMeanY
55. fBodyGyroMeanZ
56. fBodyGyroStdX
57. fBodyGyroStdY
58. fBodyGyroStdZ
59. fBodyAccMagMean
60. fBodyAccMagStd
61. fBodyBodyAccJerkMagMean
62. fBodyBodyAccJerkMagStd
63. fBodyBodyGyroMagMean
64. fBodyBodyGyroMagStd
65. fBodyBodyGyroJerkMagMean
66. fBodyBodyGyroJerkMagStd



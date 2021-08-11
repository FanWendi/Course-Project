## Course Project - Code Book
The original data set is modified by the 5 steps performed by the ``run.analysis.R`` script

1. Load the required package and download the data set from  ``https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip``

2. Read data from the targeted files and assign each data to variables

    * Names of Variables ``features`` come from “features.txt”
    * Levels of Variables ``activities`` come from “activity_labels.txt”
    * subject_test <- test/subject_test.txt
    * x_test <- test/X_test.txt 
    * y_test <- test/y_test.txt 
    * subject_train <- test/subject_train.txt
    * x_train <- test/X_train.txt 
    * y_train <- test/y_train.txt 
    <br><br>

3. Merging the training and the test sets to create one data set using the ``rbind()`` and ``cbind()`` functions

4. Extracts only the measurements on the ``mean`` and ``standard deviation (std)`` for each measurement by subsetting ``Merged_Data``, giving the name ``Tidy_Data``

5. Names of the variables in the data set should be descriptive (unabbreviated) and have underscores or dots or white spaces. Changes were made accordingly:

    * ``prefix t`` is replaced by ``Time``
    * ``prefix f`` is replaced by ``Frequency``
    * ``Acc`` is replaced by ``Accelerometer``
    * ``Gyro`` is replaced by ``Gyroscope``
    * ``Mag`` is replaced by ``Magnitude``
    * ``BodyBody`` is replaced by ``Body``
    * ``angle`` is replaced by ``Angle``
    * ``gravity`` is replaced by ``Gravity``
    * ``code`` column renamed into ``activities``
    <br><br>

6. Taking the means of each variable for each activity and each subject, then export the ``Final_Data.txt`` file

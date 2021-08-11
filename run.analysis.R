## 1. Merges the training and the test sets to create one data set.

X <- rbind(x_train, x_test)
Y <- rbind(y_train, y_test)
Subject <- rbind(subject_train, subject_test)
Merged_Data <- cbind(Subject, Y, X)

## 2. Extracts only the measurements on the mean and standard deviation for 
## each measurement. 

Tidy_Data <- select(Merged_Data, subject, code, contains("mean"), contains("std"))

## 3. Uses descriptive activity names to name the activities in the data set

Tidy_Data$code <- activities[TidyData$code, 2]

## 4. Appropriately labels the data set with descriptive variable names. 

names(Tidy_Data)[2] = "activity"
names(Tidy_Data)<-gsub("^t", "Time", names(Tidy_Data))
names(Tidy_Data)<-gsub("^f", "Frequency", names(Tidy_Data))
names(Tidy_Data)<-gsub("Acc", "Accelerometer", names(Tidy_Data))
names(Tidy_Data)<-gsub("Gyro", "Gyroscope", names(Tidy_Data))
names(Tidy_Data)<-gsub("BodyBody", "Body", names(Tidy_Data))
names(Tidy_Data)<-gsub("Mag", "Magnitude", names(Tidy_Data))
names(Tidy_Data)<-gsub("angle", "Angle", names(Tidy_Data))
names(Tidy_Data)<-gsub("gravity", "Gravity", names(Tidy_Data))

## 5. From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.

Second_Data <- Tidy_Data %>%
    group_by(subject, activity) %>%
    summarise_all(funs(mean))

write.table(Second_Data, "Second_Data.txt", row.name=FALSE)

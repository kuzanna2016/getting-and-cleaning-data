library(dplyr)
library(tidyverse)
library(tidyr)
library(readr)

features_names <- read_delim('UCI HAR Dataset/features.txt', col_names = FALSE, delim = ' ')[,2]


x_train <- read_delim('UCI HAR Dataset/train/X_train.txt', col_names = pull(features_names, X2), delim = ' ', trim_ws = TRUE)
x_test <- read_delim('UCI HAR Dataset/test/X_test.txt', col_names = pull(features_names, X2), delim = ' ', trim_ws = TRUE)

y_train <- read_csv('UCI HAR Dataset/train/y_train.txt', col_names = c('Type of Activity'))
y_test <- read_csv('UCI HAR Dataset/test/y_test.txt', col_names = c('Type of Activity'))

subject_train <- read_csv('UCI HAR Dataset/train/subject_train.txt', col_names = c('subject'))
subject_test <- read_csv('UCI HAR Dataset/test/subject_test.txt', col_names = c('subject'))

dataset <- full_join(add_column(x_train, typeofactivity = pull(y_train), 
                                subject = pull(subject_train)), 
                     add_column(x_test, typeofactivity = pull(y_test), 
                                subject = pull(subject_test)))

dataset %>%
  select(contains('mean()'), contains('std()'), typeofactivity, subject) %>%
  mutate(typeofactivity = ifelse(typeofactivity == 1, "WALKING", 
                                 ifelse(typeofactivity == 2, "WALKING_UPSTAIRS", 
                                        ifelse(typeofactivity == 3, "WALKING_DOWNSTAIRS", 
                                               ifelse(typeofactivity == 4, "SITTING", 
                                                      ifelse(typeofactivity == 5, "STANDING", "LAYING")))))) -> new_dataset

names(new_dataset) %>%
  gsub("^(t)([A-Z])","time\\2", .) %>%
  gsub("^(f)([A-Z])","frequency\\2", .) %>%
  gsub("Acc","accelerometer", .) %>%
  gsub("Gyro","gyroscope", .) %>%
  gsub("Mag","magnitude", .) %>%
  gsub("\\(\\)","", .) %>%
  gsub("-","", .) %>%
  tolower(.) -> colnames(new_dataset)

new_dataset %>%
  group_by(typeofactivity, subject) %>%
  summarise_all(mean) -> activity_dataset

write.table(activity_dataset, 'activity_datatset.txt', row.name=FALSE)

activity_dataset

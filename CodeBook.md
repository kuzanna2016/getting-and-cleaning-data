## Data

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

## Transformations that were made:

1. The test and train data were joined with the target values (type of activity) and subject variable, then they were joined together to create one dataset.

2. Only the measurements on the mean and standard deviation for each measurement were extracted.

3. Names of activities were decoded from the numeric values

4. Names of variables were change to make them more descriptive

5. The dataset was grouped by the activity and the subject variables producing the average for every variable in each group.

## Features

typeofactivity - one of five activities that were performed in the task

subject - number of the subject

In folowwing features every part of the name means:

* time - time domain signals
* frequency - frequency domain signals
* body - body acceleration signals
* gravity - gravity acceleration signals
* jerk - Jerk signals
* accelerometer - accelerometer 3-axial raw signals
* gyroscope - gyroscope 3-axial raw signals
* magnitude - magnitude calculated using the Euclidean norm
* std - standard deviation of that variable
* mean - mean value of that variable
* X|Y|Z - is used to denote 3-axial signals in the X, Y and Z directions

timebodyaccelerometermeanx

timebodyaccelerometermeany

timebodyaccelerometermeanz

timegravityaccelerometermeanx

timegravityaccelerometermeany

timegravityaccelerometermeanz

timebodyaccelerometerjerkmeanx

timebodyaccelerometerjerkmeany

timebodyaccelerometerjerkmeanz

timebodygyroscopemeanx

timebodygyroscopemeany

timebodygyroscopemeanz

timebodygyroscopejerkmeanx

timebodygyroscopejerkmeany

timebodygyroscopejerkmeanz

timebodyaccelerometermagnitudemean

timegravityaccelerometermagnitudemean

timebodyaccelerometerjerkmagnitudemean

timebodygyroscopemagnitudemean

timebodygyroscopejerkmagnitudemean

frequencybodyaccelerometermeanx

frequencybodyaccelerometermeany

frequencybodyaccelerometermeanz

frequencybodyaccelerometerjerkmeanx

frequencybodyaccelerometerjerkmeany

frequencybodyaccelerometerjerkmeanz

frequencybodygyroscopemeanx

frequencybodygyroscopemeany

frequencybodygyroscopemeanz

frequencybodyaccelerometermagnitudemean

frequencybodybodyaccelerometerjerkmagnitudemean

frequencybodybodygyroscopemagnitudemean

frequencybodybodygyroscopejerkmagnitudemean

timebodyaccelerometerstdx

timebodyaccelerometerstdy

timebodyaccelerometerstdz

timegravityaccelerometerstdx

timegravityaccelerometerstdy

timegravityaccelerometerstdz

timebodyaccelerometerjerkstdx

timebodyaccelerometerjerkstdy

timebodyaccelerometerjerkstdz

timebodygyroscopestdx

timebodygyroscopestdy

timebodygyroscopestdz

timebodygyroscopejerkstdx

timebodygyroscopejerkstdy

timebodygyroscopejerkstdz

timebodyaccelerometermagnitudestd

timegravityaccelerometermagnitudestd

timebodyaccelerometerjerkmagnitudestd

timebodygyroscopemagnitudestd

timebodygyroscopejerkmagnitudestd

frequencybodyaccelerometerstdx

frequencybodyaccelerometerstdy

frequencybodyaccelerometerstdz

frequencybodyaccelerometerjerkstdx

frequencybodyaccelerometerjerkstdy

frequencybodyaccelerometerjerkstdz

frequencybodygyroscopestdx

frequencybodygyroscopestdy

frequencybodygyroscopestdz

frequencybodyaccelerometermagnitudestd

frequencybodybodyaccelerometerjerkmagnitudestd

frequencybodybodygyroscopemagnitudestd

frequencybodybodygyroscopejerkmagnitudestd

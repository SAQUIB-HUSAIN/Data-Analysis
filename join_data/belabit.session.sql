-- Creating the table for daily_activity, daily_sleep, hourly_steps

CREATE TABLE daily_activity(
      id BIGINT NOT NULL,ActivityDate DATE,total_steps INT,total_distance FLOAT,tracker_distance FLOAT,log_active_distance FLOAT,very_active_distance FLOAT,mod_active_distance FLOAT,light_active_distance FLOAT,sedent_active_distance FLOAT,very_active_min INT,fairly_active_min INT,light_active_min INT,sedent_min INT,calories INT
)
DROP TABLE daily_activity
CREATE TABLE daily_sleep(
      id BIGINT NOT NULL,sleep_day DATE,total_sleep_record INT,total_min_sleep INT,total_time_bed INT
)
DROP TABLE daily_sleep
CREATE TABLE hourly_steps(
      id BIGINT NOT NULL,activity_hour TIMESTAMP WITH TIME ZONE,step_total INT
)

-- Copy data with the file path

-- Copying data from dailyactivity_merged
COPY daily_activity
FROM '/Users/saquibhazari/Desktop/Fitbase Data/Fitabase Data 4.12.16-5.12.16/dailyActivity_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8')

-- Copying path from sleepday_merged
COPY daily_sleep
FROM '/Users/saquibhazari/Desktop/Fitbase Data/Fitabase Data 4.12.16-5.12.16/sleepDay_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8')

-- Copying path from hourlySteps_merged
COPY hourly_steps
FROM '/Users/saquibhazari/Desktop/Fitbase Data/Fitabase Data 4.12.16-5.12.16/hourlySteps_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8')
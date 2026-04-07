CREATE TABLE health.mentalhealthdata (
    indicator TEXT,
    group_name VARCHAR(350),
    state VARCHAR(350),
    subgroup TEXT,
    phase VARCHAR(50),
    time_period INTEGER,
    time_period_label VARCHAR(50),  -- Fixed duplicate
    time_period_start_date DATE,  
    time_period_end_date DATE,  
    value NUMERIC,  
    low_ci NUMERIC,  
    high_ci NUMERIC,  
    confidence_interval TEXT,  
    quartile_range TEXT,  
    suppression_flag TEXT  
);
COPY health.mentalhealthdata (indicator, group_name, state, subgroup, phase, time_period, 
    time_period_label, time_period_start_date, time_period_end_date, value, low_ci, high_ci, 
    confidence_interval, quartile_range, suppression_flag)
FROM '/tmp/mental_health.csv'
DELIMITER ',' 
CSV HEADER;

SELECT * FROM health.mentalhealthdata; CSV HEADER; 
SELECT indicator, group_name, subgroup, value FROM health.mentalhealthdata;
--count of data 
SELECT COUNT(*) FROM health.mentalhealthdata; 
--count of how many groups are included in the data
SELECT COUNT(DISTINCT group_name) FROM health.mentalhealthdata;
-- Average the value of utilization of the different indicators
SELECT indicator, AVG(value) AS average_value
FROM health.mentalhealthdata
GROUP BY indicator;
-- Average the value of utilization of the different groups
SELECT group_name, AVG(value) AS average_value
FROM health.mentalhealthdata
GROUP BY group_name;
-- Average the value of utilization of the different phases
SELECT phase, AVG(value) AS average_value
FROM health.mentalhealthdata
GROUP BY phase
ORDER BY phase;
-- Average the value of utilization of the different states
SELECT state, AVG(value) AS average_value
FROM health.mentalhealthdata
GROUP BY state;
-- Average the value of utilization of the different subgroups sorted by groups
SELECT group_name, subgroup, AVG(value) AS average_value
FROM health.mentalhealthdata
GROUP BY group_name, subgroup
ORDER BY group_name DESC;

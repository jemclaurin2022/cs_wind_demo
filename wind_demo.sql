CREATE TABLE Wind (
    rowid INT,
    Direction FLOAT(12,6),
    Speed FLOAT(12,6),
    SpeedError FLOAT(12,6)
) ENGINE=ColumnStore DEFAULT CHARSET=utf8;

LOAD DATA LOCAL INFILE '/jem/dash-wind-streaming-master/Data/wind-data.csv' 
INTO TABLE Wind  
    FIELDS TERMINATED BY ',' 
           OPTIONALLY ENCLOSED BY '"'
    LINES  TERMINATED BY '\n' ;
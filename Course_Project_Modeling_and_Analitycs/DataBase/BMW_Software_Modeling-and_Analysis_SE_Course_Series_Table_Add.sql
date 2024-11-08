use [BMW_Software_Modeling-and_Analysis_SE_Course_Work]

CREATE TABLE Series (
    SeriesID INT NOT NULL PRIMARY KEY,
    Series_Name VARCHAR(50) NOT NULL
);


ALTER TABLE Model
ADD SeriesID INT NULL;

ALTER TABLE Model
ADD CONSTRAINT FK_Model_Series
FOREIGN KEY (SeriesID) REFERENCES Series(SeriesID);

INSERT INTO Series (SeriesID, Series_Name) VALUES (1, 'I-Series');
INSERT INTO Series (SeriesID, Series_Name) VALUES (2, 'X-Series');
INSERT INTO Series (SeriesID, Series_Name) VALUES (3, 'M-Series');
INSERT INTO Series (SeriesID, Series_Name) VALUES (4, '1-st Series');
INSERT INTO Series (SeriesID, Series_Name) VALUES (5, '2-nd Series');
INSERT INTO Series (SeriesID, Series_Name) VALUES (6, '3-rt Series');
INSERT INTO Series (SeriesID, Series_Name) VALUES (7, '4-th Series');
INSERT INTO Series (SeriesID, Series_Name) VALUES (8, '5-th Series');
INSERT INTO Series (SeriesID, Series_Name) VALUES (9, '6-th Series');
INSERT INTO Series (SeriesID, Series_Name) VALUES (10, '7-th Series');
INSERT INTO Series (SeriesID, Series_Name) VALUES (11, '8-th Series');

Select * From Series 


Create schema purchases;

--Create Table--
SET SEARCH_PATH TO purchases;
SHOW SEARCH_PATH;

CREATE TABLE Purchase(
Transaction_date DATE,
Item varchar(20),
Cost INT
);
INSERT INTO Purchase VALUES
('2022-06-04','Thing 10',10),
('2022-06-03','Thing 11',11);

DELETE FROM Purchase
Where Item IN *('Thing 10','Thing 11')


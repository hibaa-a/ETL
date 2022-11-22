CREATE TABLE accident(
	id VARCHAR,
	severity VARCHAR,
	day	VARCHAR,
	weather VARCHAR
);

CREATE TABLE vehicle(
	id	VARCHAR,
	driver_age VARCHAR,
	vehicle_age	DECIMAL,
	make VARCHAR,
	model VARCHAR,
	sex VARCHAR
);

SELECT * FROM accident;
SELECT * FROM vehicle;
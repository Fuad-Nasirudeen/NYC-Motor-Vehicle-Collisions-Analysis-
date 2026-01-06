CREATE TABLE "collisions"(
	Collision_ID BIGINT PRIMARY KEY,
	Date DATE,
	Time TIME,
	Borough VARCHAR(50),
	Street_Name VARCHAR(255),
	Cross_Street VARCHAR(255),
	Latitude DECIMAL(9,6),
	Longitude DECIMAL(9,6),
	Contributing_Factor VARCHAR(255),
	Vehicle_Type VARCHAR(100),
	Persons_Injured INT,
	Persons_Killed INT,
	Pedestrians_Injured INT,
	Pedestrians_Killed INT,
	Cyclists_Injured INT,
	Cyclists_Killed INT,
	Motorists_Injured INT,
	Motorists_Killed INT
);


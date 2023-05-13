
CREATE TABLE activity (
	UID VARCHAR PRIMARY KEY,
	ac_name VARCHAR,
	starttime INTEGER,
	endtime INTEGER,
	sponsor VARCHAR,
	lo_name VARCHAR
	);

CREATE TABLE organizer (
	sponsor VARCHAR PRIMARY KEY
	);

CREATE TABLE location (
	lo_name VARCHAR PRIMARY KEY,
	admin_district VARCHAR,
	lat FLOAT,
	lon FLOAT
	);

CREATE TABLE surrounding_attraction (
	lo_name VARCHAR,
	at_name VARCHAR,
	distance FLOAT,
	PRIMARY KEY(lo_name, at_name)
	);
	
CREATE TABLE attraction (
	at_name VARCHAR PRIMARY KEY,
	admin_district VARCHAR,
	address VARCHAR,
	lon FLOAT,
	lat FLOAT,
	category VARCHAR
	);

CREATE TABLE nearby_station (
	stopID INTEGER,
	lo_name VARCHAR,
	distance FLOAT,
	PRIMARY KEY(stopid , lo_name)
	);

CREATE TABLE station (
	stopID INTEGER PRIMARY KEY,
	stop_Cname VARCHAR,
	stop_Ename VARCHAR,
	lat FLOAT,
	lon FLOAT,
	address VARCHAR
	);

CREATE TABLE stop (
	stopID INTEGER,
	routeID INTEGER,
	PRIMARY KEY(stopid ,routeID) -- REFERENCES stop(stopid), route(routeID)
	);
	
CREATE TABLE route (
	routeID INTEGER PRIMARY KEY,
	providerID INTEGER,
	providerName VARCHAR,
	route_Cname VARCHAR,
	route_Ename VARCHAR
	)

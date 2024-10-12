CREATE TABLE bus1 (
    route_name TEXT NOT NULL,
    route_link TEXT,
    busname TEXT NOT NULL,
    bustype TEXT NOT NULL,
    departing_time TIME NOT NULL,
    duration TEXT NOT NULL,
    reaching_time TIME NOT NULL,
    star_rating TEXT ,
    price DECIMAL NOT NULL,
    seats_available TEXT 
);

TRUNCATE TABLE bus1
RESTART IDENTITY;

COPY bus_routes(route_name, route_link, busname,bustype,departing_time,duration,reaching_time,star_rating,price,seats_available )
FROM '"C:\Users\Gautam\OneDrive\Desktop\vs\.venv\apsrtc_bus_data.csv"'
DELIMITER ','
CSV HEADER;
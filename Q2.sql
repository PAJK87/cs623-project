SELECT name, ST_Distance(
    (SELECT geom FROM nyc_subway_stations WHERE id = 1),
    (SELECT geom FROM nyc_subway_stations WHERE id = 2)
) AS distance FROM nyc_subway_stations WHERE id = 1 OR id = 2;

SELECT
    name,
    ST_Distance(
        geom,
        ST_SetSRID(ST_MakePoint(-73.9443475, 40.8103753), 26918) -- Central Park coordinates
    ) AS distance_from_my_house
FROM nyc_subway_stations;


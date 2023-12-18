SELECT ST_Distance(
    (SELECT geom FROM nyc_subway_stations WHERE id = 1),
    (SELECT geom FROM nyc_subway_stations WHERE id = 2)
) AS distance;

SELECT
    name,
    ST_Distance(
        ST_Transform(geom, 4326)::geography,
        ST_GeographyFromText('POINT(-73.9443475 40.8103753)')
    ) AS distance_from_my_house
FROM nyc_subway_stations;


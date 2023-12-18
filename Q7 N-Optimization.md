Looking at this query: 
~~~
SELECT
    name,
    ST_Distance(
        ST_Transform(geom, 4326)::geography,
        ST_GeographyFromText('POINT(-73.9443475 40.8103753)')
    ) AS distance_from_my_house
FROM nyc_subway_stations;
~~~

If I wanted to make sure this scales to very large amounts of data I would make sure I have correct indexes set up to make finding data easier. I could also cluster the table based on that index. I could also partition the table and use parallel execution on the queries. If the data doesn't change often I could store the calculation to make retrieving it faster. 

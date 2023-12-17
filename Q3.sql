SELECT ST_Area(ST_MakePolygon(ST_MakeLine(ARRAY[
    (SELECT geom FROM nyc_subway_stations WHERE gid = '243'), 
    (SELECT geom FROM nyc_subway_stations WHERE gid = '242'), 
    (SELECT geom FROM nyc_subway_stations WHERE gid = '320'), 
    (SELECT geom FROM nyc_subway_stations WHERE gid = '321'),
    (SELECT geom FROM nyc_subway_stations WHERE gid = '243')
])));


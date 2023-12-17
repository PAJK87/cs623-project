SELECT name, color FROM nyc_subway_stations WHERE borough = 'Manhattan'

SELECT name, routes FROM nyc_subway_stations WHERE color = 'RED'

SELECT name, routes FROM nyc_subway_stations WHERE express IS NOT NULL

SELECT long_name, color FROM nyc_subway_stations WHERE borough = 'Manhattan'
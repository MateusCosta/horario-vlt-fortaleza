--SELECT  datetime(1578647760, 'unixepoch', 'localtime')
SELECT *,strftime('%H:%M:%S',datetime(time, 'unixepoch', 'localtime')),strftime('%H:%M:%S',DATETIME(strftime('%H:%M:%S','now'),'-180 minutes'))FROM lines INNER JOIN stops ON lines.id = stops.line_id WHERE strftime('%H:%M:%S',datetime(time, 'unixepoch', 'localtime')) > strftime('%H:%M:%S',DATETIME(strftime('%H:%M:%S','now'),'-180 minutes'))
AND lines.id = 1
--SELECT strftime('%H:%M:%S',DATETIME(strftime('%H:%M:%S','now'),'-180 minutes'))
转换数据以导入 MonogoDB
=======================

1. 数据说明: 
	* CarId,Event,Status,GPSTime,GPSLng,GPSLat,GPSMag,GPSAng,GPSStatus

2. 转换方法
	* tr -d '\15\32' < data.csv > data.unix.csv (dos2unix)
	* awk -f csv2json.awk data.unix.csv > data.unix.json (CSV2GeoJson)

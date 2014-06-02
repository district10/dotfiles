BEGIN {
	FS=","
}

{
	printf("{\"type\": \"Feature\",");
	printf(" \"properties\":");
	printf(" {");
		printf(" \"CarID\": \"%s\",", $1);
		printf(" \"Event\": \"%s\",", $2);
		printf(" \"Status\": \"%s\",", $3);
		printf(" \"GPSTime\": \"%s\",", $4);
		printf(" \"geometry\": {\"type\": \"Point\", \"coordinates\": [%s,%s]},", $5, $6);
		printf(" \"GPSMag\": \"%s\",", $7);
		printf(" \"GPSAng\": \"%s\",", $8);
		printf(" \"GPSStatus\": \"%s\"", $9);
	printf("}}, \n");
}

END {

}

#!/bin/bash
arquivo=$("Insert your path or create a database SELECT ")

JSON="["
for x in $arquivo; do
    read -r -a array <<< $x
    MAQUINA=${array[0]}
    JSON="${JSON} {\"{#MAQUINA}\": \"${MAQUINA}\"}," # this a valid JSON and #MAQUINA is a MACRO to comunicate with zabbix font-end
    
done

# Remove the last comma
JSON=`echo ${JSON:0:-1}`

# Close the array
JSON="${JSON}]"

echo $JSON

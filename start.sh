#!/bin/sh
DIR="./new_plugins"
while true
do
if [ "$(ls -A $DIR)" ]; then
	echo "Updating plugins..."
	for f in $DIR/*.jar
	do
		cp -r "$f" ./plugins
		rm -rf "$f"
	done
else 
	echo "No new plugins to update."
fi
sleep 5
java -Xmx5120M -Xms2500M -jar orbitbukkit-1.7.10-R0.1-SNAPSHOT.jar nogui
done

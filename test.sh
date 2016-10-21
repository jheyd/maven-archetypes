#!/bin/bash

function mytest {
	ARCHETYPE=$1
	mvn install -f $ARCHETYPE
	local status1=$?
	if [ $status1 -ne 0 ]; then
		echo "error in archetype build"
		exit
	fi

	rm -r "$ARCHETYPE-test"
	mvn archetype:generate \
		-DarchetypeGroupId="de.janheyd" -DarchetypeArtifactId="$ARCHETYPE" -DarchetypeVersion="1.0-SNAPSHOT" \
		-DgroupId="de.janheyd" -DartifactId="$ARCHETYPE-test" -Dversion="1.0-SNAPSHOT" -Dpackage="de.janheyd"

	local status2=$?
	if [ $status2 -ne 0 ]; then
		echo "error in archetype generation"
		exit
	fi
	
	mvn package -f $ARCHETYPE-test -DskipTests

	local status3=$?
	if [ $status3 -ne 0 ]; then
		echo "error in archetype generation"
		exit
	fi
}

mytest java8-archetype
mytest java8-executable-archetype

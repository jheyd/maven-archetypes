#!/bin/bash

SRC="src/main/resources/archetype-resources/src"

MODULE1="java8-archetype"
mkdir -p "$MODULE1/$SRC/main/java"
mkdir -p "$MODULE1/$SRC/main/resources"
mkdir -p "$MODULE1/$SRC/test/resources"

MODULE2="java8-executable-archetype"
mkdir -p "$MODULE2/$SRC/main/resources"
mkdir -p "$MODULE2/$SRC/test/resources"

mvn clean install
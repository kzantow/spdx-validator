#!/bin/sh

# copy stdin to the file used by the test
tee /contents.spdx > /dev/null

java -jar /tools-java-$VERSION-jar-with-dependencies.jar Verify /contents.spdx

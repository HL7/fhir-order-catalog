#!/bin/bash
export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8
JAVA -jar input-cache/publisher.jar -ig ig.ini

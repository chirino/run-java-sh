#!/bin/sh
cd /tmp
export JAVA_MAX_CORES_AVAILABLE="373"
LD_PRELOAD=/tmp/libjvm-cpu-limit.so java -cp . Test
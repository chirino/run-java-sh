# Used to control what Runtime.getRuntime().availableProcessors() reports to the JVM

Many Java libaries use the Runtime.getRuntime().availableProcessors() API call to auto
tune their settings.  The problem is that if you run Java on container system like
Kubernetes or OpenShift and your using big nodes with many cores but your limiting the number
of core allocated to the Java process, the Java app will thing all the core are available
when it reality it may only have been allocated 1 core.


This hack is inspired by http://stackoverflow.com/questions/22741859/deceive-the-jvm-about-the-number-of-available-cores-on-linux

# Requires

Docker

# Building

    ./build.sh

# Testing

    ./test.sh
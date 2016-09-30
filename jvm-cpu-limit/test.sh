#!/bin/bash 
javac Test.java
for base in "jboss/base-jdk:8" "fabric8/java-alpine-openjdk8-jdk"; do
	echo "Testing against $base"
	echo "
FROM $base
COPY * /tmp/
CMD [ \"sh\", \"/tmp/run-test.sh\" ] 
" > Dockerfile.test
	docker build -t cpu-limit-test -f Dockerfile.test .  > /dev/null

	result="$(docker run -i -t cpu-limit-test)"

	if [[ $result == "373" ]] ; then
		echo Test Passed: $base
	else
		echo Test Failed: $base
		echo $result
	fi
done

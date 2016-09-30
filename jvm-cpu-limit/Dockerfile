FROM centos:7

RUN yum -y install gcc
COPY jvm-cpu-limit.c /tmp
RUN  cd /tmp && gcc -O3 -fPIC -shared -Wl,-soname,libjvm-cpu-limit.so -o libjvm-cpu-limit.so jvm-cpu-limit.c 
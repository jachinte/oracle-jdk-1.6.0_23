# Oracle JDK 1.6.0_23 on Ubuntu 16.04 LTS
#
# VERSION 0.1.0

FROM phusion/baseimage:0.9.22

MAINTAINER Miguel Jiménez <migueljimenezachinte@gmail.com>
LABEL Description="This image provides Oracle JDK 1.6.0_23." \
      License="MIT" \
      Usage="docker run --rm -ti jachinte/oracle-jdk-1.6.0_23 java -version" \
      Version="0.1.0"

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# Download and install Oracle JDK 1.6.0_23.
RUN mkdir /tmp/files
WORKDIR /tmp/files
ADD jdk-6u23-linux-x64.bin /tmp/files
RUN chmod a+x jdk-6u23-linux-x64.bin
RUN ./jdk-6u23-linux-x64.bin
RUN mkdir /opt/jdk && mv jdk1.6.0_23 /opt/jdk

# Set environment variables.
ENV JAVA_HOME /opt/jdk/jdk1.6.0_23
ENV PATH $PATH:$JAVA_HOME/bin

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

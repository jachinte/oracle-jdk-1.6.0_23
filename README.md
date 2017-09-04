# jachinte/oracle-jdk-1.6.0_23

![Docker](http://s32.postimg.org/cs6e5svtd/docker.png)&nbsp;&nbsp;&nbsp;&nbsp;![Java](https://s26.postimg.org/du4zkjzmh/java-logo.jpg)

This docker container installs Oracle JDK 1.6.0_23.

## Installation from [Docker registry hub](https://hub.docker.com/r/jachinte/oracle-jdk-1.6.0_23/).

```bash
docker pull jachinte/oracle-jdk-1.6.0_23
```

## Usage

```bash
docker run --rm -ti jachinte/oracle-jdk-1.6.0_23 java -version
```

## Build the image from source

```bash
git clone https://github.com/jachinte/oracle-jdk-1.6.0_23
cd oracle-jdk-1.6.0_23
docker build -t jachinte/oracle-jdk-1.6.0_23 .
```

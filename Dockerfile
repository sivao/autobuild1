# Version: 0.0.1

#FROM ubuntu:14.04
	FROM dockerfile/java:openjdk-7-jdk

	MAINTAINER Siva "siva@example.com"

	RUN apt-get update
	ONBUILD ADD dockertest.jar /data/dockertest.jar

# installing JDK
#RUN apt-get install -y openjdk-7-jdk

	ADD dockertest.jar /data/dockertest.jar
#ADD dockertest.jar /

#CMD ["java", "-jar", "dockertest.jar"]
#ENTRYPOINT ["java", "-jar", "dockertest.jar"]
#CMD [""]

	CMD ["java", "-jar", "dockertest.jar"]
#CMD java -jar /data/dockertest.jar
EXPOSE 8080

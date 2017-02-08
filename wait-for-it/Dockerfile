# file Dockerfile
FROM openjdk:8-jre
RUN apt-get update && apt-get install -y netcat
ADD wait-for-it.sh wait-for-it.sh.sh
RUN sh -c 'touch /wait-for-it.sh.jar'
RUN chmod +x wait-for-it.sh
CMD ./wait-for-it.sh
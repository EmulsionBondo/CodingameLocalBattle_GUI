FROM ubuntu:20.04
ENV TZ=Asia/Tokyo \
    DEBIAN_FRONTEND=noninteractive
WORKDIR '/work'
RUN apt-get update -y && apt-get install -y build-essential \
    g++ \
    python3-pip \
    unzip \
    zip \
    openjdk-8-jdk

CMD ["java", "-cp", "fall-2020-1.0-SNAPSHOT-jar-with-dependencies.jar", "Fall2020Main"]
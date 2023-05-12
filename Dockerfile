FROM ubuntu

RUN apt update && \
    apt install sudo && \
    apt install -y wget && \
    apt-get update && \
    apt-get install -y python3 && \
    apt-get install -y python3-requests && \
    apt-get install -y default-jdk && \
    apt-get update

RUN wget https://dlcdn.apache.org/spark/spark-3.4.0/spark-3.4.0-bin-hadoop3.tgz && \
    tar -xzf spark-3.4.0-bin-hadoop3.tgz && \
    mv spark-3.4.0-bin-hadoop3 spark

RUN echo 'export SPARK_HOME=/home/ubuntu/spark' >> ~/.bashrc && \
    echo 'export PATH=$PATH:$SPARK_HOME/bin' >> ~/.bashrc

RUN useradd -m -s /bin/bash ubuntu && \
    passwd -d ubuntu && \
    usermod -aG sudo ubuntu

WORKDIR /home/ubuntu

USER ubuntu

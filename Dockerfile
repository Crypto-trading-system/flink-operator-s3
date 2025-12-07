FROM apache/flink-kubernetes-operator:1.13.0

RUN mkdir -p /opt/flink/plugins/s3-fs-hadoop

RUN wget -P /opt/flink/plugins/s3-fs-hadoop/ \
    https://repo1.maven.org/maven2/org/apache/flink/flink-s3-fs-hadoop/1.18.1/flink-s3-fs-hadoop-1.18.1.jar

RUN chown -R flink:flink /opt/flink/plugins
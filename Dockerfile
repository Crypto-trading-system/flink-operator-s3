FROM flink:2.1.1-java21

# Create the plugin directory structure Flink expects
RUN mkdir -p /opt/flink/plugins/s3-fs-hadoop

# Download the specific Flink 2.1.1 S3 Hadoop plugin
# (Note: Ensure the version matches your Flink version exactly)
RUN wget -P /opt/flink/plugins/s3-fs-hadoop/ \
    https://repo1.maven.org/maven2/org/apache/flink/flink-s3-fs-hadoop/2.1.1/flink-s3-fs-hadoop-2.1.1.jar
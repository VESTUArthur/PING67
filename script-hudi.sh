bash -c "./spark/sbin/start-master.sh && ./spark/sbin/start-worker.sh spark://localhost:7077"

spark-submit ../hadoop-data/kafka_2.12-0.1.0-SNAPSHOT.jar \
--packages \
org.apache.spark:spark-core_2.11:2.4.8,\
org.apache.spark:spark-sql_2.11:2.4.8,\
org.apache.spark:spark-streaming_2.11:2.4.8,\
org.apache.sparkspark-sql-kafka-0-10_2.11:2.4.8,\
org.apache.spark:spark-streaming-kafka-0-10_2.11:2.4.8
# https://iceberg.apache.org/multi-engine-support/#apache-spark
# spark.sql.catalog.spark_catalog org.apache.iceberg.spark.SparkCatalog
# spark.sql.catalog.spark_catalog.type hadoop
# spark.sql.catalog.spark_catalog.warehouse /iceberg_test/
DIR=/databricks/jars

wget --no-check-certificate -NP $DIR "https://search.maven.org/remotecontent?filepath=org/apache/iceberg/iceberg-spark-runtime-3.4_2.12/1.4.3/iceberg-spark-runtime-3.4_2.12-1.4.3.jar"
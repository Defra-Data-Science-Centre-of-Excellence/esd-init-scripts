# https://iceberg.apache.org/multi-engine-support/#apache-spark
# spark.sql.catalog.spark_catalog org.apache.iceberg.spark.SparkCatalog
# spark.sql.catalog.spark_catalog.type hadoop
# spark.sql.catalog.spark_catalog.warehouse /iceberg_test/
DIR=/databricks/jars

wget --no-check-certificate -NP $DIR "https://repo1.maven.org/maven2/org/apache/iceberg/iceberg-spark-3.4_2.12/1.4.3/iceberg-spark-3.4_2.12-1.4.3.jar"

# Sedona
## requires spark config:
### spark.kryo.registrator org.apache.sedona.core.serde.SedonaKryoRegistrator
### spark.serializer org.apache.spark.serializer.KryoSerializer
### spark.sql.extensions org.apache.sedona.viz.sql.SedonaVizExtensions,org.apache.sedona.sql.SedonaSqlExtensions
DIR=/databricks/jars
SPARK="3.4"
SCALA="2.12"
SEDONA="1.5.0"
wget --no-check-certificate -NP $DIR "https://repo1.maven.org/maven2/org/datasyslab/geotools-wrapper/1.4.0-28.2/geotools-wrapper-1.4.0-28.2.jar"
wget --no-check-certificate -NP $DIR "https://repo1.maven.org/maven2/org/apache/sedona/sedona-spark-shaded-${SPARK}_${SCALA}/$SEDONA/sedona-spark-shaded-${SPARK}_${SCALA}-$SEDONA.jar"
wget --no-check-certificate -NP $DIR "https://repo1.maven.org/maven2/org/apache/sedona/sedona-viz-${SPARK}_${SCALA}/$SEDONA/sedona-viz-${SPARK}_${SCALA}-$SEDONA.jar"

pip install \
  apache-sedona==$SEDONA

# Sedona 1.5.0 requirements
pip install \
  geopandas==0.11.1
  keplergl==0.3.2
  pydeck==0.8.0
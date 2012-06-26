if [ "$1" == "start" ]; then
  export JAVA_OPTS=" \
    -verbose:sizes \
    -Xmx4g -Xms4g \
    -Xmn2g \
    -XX:MaxPermSize=128m \
    -XX:+HeapDumpOnOutOfMemoryError \
    -XX:-UseGCOverheadLimit \
    -XX:+ExplicitGCInvokesConcurrent \
    -XX:+PrintGCDateStamps -XX:+PrintGCDetails \
    -XX:+PrintTenuringDistribution \
    -XX:+CMSClassUnloadingEnabled \
    -XX:+UseConcMarkSweepGC \
    "
else
  export JAVA_OPTS=""
fi

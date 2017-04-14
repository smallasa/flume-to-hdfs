# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# If this file is placed at FLUME_CONF_DIR/flume-env.sh, it will be sourced
# during Flume startup.

# Enviroment variables can be set here.

 export JAVA_HOME=/usr/local/jdk

# Give Flume more memory and pre-allocate, enable remote monitoring via JMX
# export JAVA_OPTS="-Xms100m -Xmx2000m -Dcom.sun.management.jmxremote"
export JAVA_OPTS="-Xmx2G -Xms2G -Xnoclassgc \
-XX:PermSize=512m -XX:MaxPermSize=1G -XX:MaxDirectMemorySize=1G \
-XX:+DisableExplicitGC -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=$FLUME_HOME/logs \
-XX:SurvivorRatio=8 -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+CMSParallelRemarkEnabled \
-XX:+UseCMSCompactAtFullCollection -XX:CMSFullGCsBeforeCompaction=0 -XX:+CMSClassUnloadingEnabled \
-XX:LargePageSizeInBytes=128M -XX:+UseFastAccessorMethods -XX:+UseCMSInitiatingOccupancyOnly \
-XX:CMSInitiatingOccupancyFraction=70 -XX:SoftRefLRUPolicyMSPerMB=0 -XX:+PrintClassHistogram \
-XX:+PrintGCDetails -XX:+PrintGCTimeStamps -XX:+PrintHeapAtGC  \
-XX:+PrintGCApplicationConcurrentTime -XX:+PrintGCApplicationStoppedTime \
-Xloggc:$FLUME_HOME/logs/agent_gc.log \
-Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.local.only=false \
-Djava.rmi.server.hostname=10.0.0.2 \
-Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false \
-Dflume.monitoring.type=ganglia -Dflume.monitoring.hosts=nn2:8649"

# Note that the Flume conf directory is always included in the classpath.
#FLUME_CLASSPATH=""

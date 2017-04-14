nohup flume-ng agent -n consumer -f conf/consumer.properties -Dflume.monitoring.type=ganglia -Dflume.monitoring.hosts=nn2.zdp.ol:8649 &

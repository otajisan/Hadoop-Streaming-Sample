#!/bin/sh

/usr/local/Cellar/hadoop/2.7.2/sbin/stop-yarn.sh
/usr/local/Cellar/hadoop/2.7.2/sbin/stop-dfs.sh

rm -fR /tmp/hadoop-taji
hdfs namenode -format

/usr/local/Cellar/hadoop/2.7.2/sbin/start-dfs.sh
/usr/local/Cellar/hadoop/2.7.2/sbin/start-yarn.sh

hadoop dfs -mkdir -p /user/taji/test
hadoop dfs -put ./input /user/taji/test/

#!/bin/bash


LAUNCHPATH=`find /bigdata/salut/lib/tools/ -name "*.jar" | xargs | sed "s/ /:/g"`
LAUNCHPATH=.:$LAUNCHPATH

/bigdata/spark/bin/spark-submit --class com.cds.learn --master yarn-cluster --num-executors 4 --executor-memory 4g --executor-cores 5 --jars /bigdata/spark/lib/spark-examples-1.5.2-hadoop2.4.0.jar,/bigdata/alluxio/core/client/target/alluxio-core-client-1.0.1-jar-with-dependencies.jar /bigdata/streaming*.jar 

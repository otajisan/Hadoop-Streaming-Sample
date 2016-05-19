#!/bin/bash

# 全開結果削除
rm -fR ./output

# Hadoopコマンドの実行
/usr/local/bin/hadoop \
    jar /usr/local/Cellar/hadoop/2.7.2/libexec/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
    -mapper WordCountMapperScript.py \
    -reducer WordCountReducerScript.py \
    -file WordCountMapperScript.py WordCountReducerScript.py \
    -input ./input \
    -output ./output

cat ./output/*

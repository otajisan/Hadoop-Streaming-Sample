#!/bin/bash

# 全開結果削除
rm -fR ./output

# Hadoopコマンドの実行
/usr/local/bin/hadoop \
    jar /usr/local/Cellar/hadoop/2.7.2/libexec/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
    -Dmapred.reduce.tasks=3 \
    -Dmapred.map.output.compression.codec=org.apache.hadoop.io.compress.DefaultCodec \
    -Dmapred.output.compression.codec=org.apache.hadoop.io.compress.GzipCodec \
    -Dmapred.output.compress=true \
    -Dmapred.compress.map.output=true \
    -mapper "/bin/cat" \
    -reducer "perl WordCountReducer.pl" \
    -file WordCountReducer.pl \
    -input ./input \
    -output ./output

# 結果出力
gzcat ./output/*.gz

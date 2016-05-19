#!/usr/bin/php
<?php

function reduce($lines)
{
    $result = array();
    while (!feof($lines)) {
        $line = trim(fgets($lines));
        if (!empty($line)) {
            // キー(aaaとか)の個数をカウント
            $result[$line]++;
        }
    }

    // 結果出力
    foreach ($result as $key => $val) {
        echo "${key}\t${val}\n";
    }
}

reduce(STDIN);

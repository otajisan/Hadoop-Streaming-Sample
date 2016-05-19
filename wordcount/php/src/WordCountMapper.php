#!/usr/bin/php
<?php

function map($lines)
{
    while (!feof($lines)) {
        echo trim(fgets($lines))."\n";
    }
}

map(STDIN);

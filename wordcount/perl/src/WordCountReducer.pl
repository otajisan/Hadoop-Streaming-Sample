#!/usr/bin/perl
use strict;
use warnings;

my %result;
while (defined(my $line = <STDIN>)) {
    chomp($line);
    # ワード毎に加算
    $result{$line}++;
}

# 結果を出力
foreach my $key (keys(%result)){
    print "$key\t$result{$key}\n";
}

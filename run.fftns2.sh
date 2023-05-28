#!/bin/bash

set -e

# please edit these lines on calling your programs
program_name="mafft-fftns"
cmd="$program_name --thread 14 --threadit 14"
prog_alias="mafft.fftns2"

nowdir=`dirname $(readlink -f $0)`
datafolder=$(cd $nowdir/Test && find -name '*' | cut -c 3-)
dataset=$nowdir


exportfile="$nowdir/$prog_alias.txt"

# rm -rf $prog_alias # uncomment it if you want to rerun this program
mkdir -p $prog_alias
rm -f $exportfile

date >> $exportfile
for data in $datafolder
do
    if [ -f "$dataset/$prog_alias/$data" ]; then
        echo "$dataset/$prog_alias/$data has aligned"
    else
        $cmd $dataset/Test/$data > $dataset/$prog_alias/$data # For MAFFT
    fi
    # $cmd -i $dataset/Test/$data -o $dataset/$prog_alias/$data  # For common programs
done
date >> $exportfile
echo "OK on running."

qscore=$nowdir'/qscore/bin/qscore'

for data in $datafolder
do
    test_id=`basename $data .vie`
    $qscore -test $dataset/$prog_alias/$data -ref $dataset/Ref/$test_id.ref -ignoretestcase -ignorerefcase -truncname >> $exportfile
done
echo "OK on testing."

#!/bin/bash

FILE_NAME1="c30";
TITLE1="k_t = 30";
FILE_NAME2="c60";
TITLE2="k_t = 60";

TEST="../comportement/TestExperienceDatabase.py"

$TEST --show --c 30 > ${FILE_NAME1}
$TEST --show --c 60 > ${FILE_NAME2}



gnuplot -persist <<PLOT
set xrange [0:100]
set yrange [0:1]

set terminal png size 1024,500
set output "comparison.png"

set xlabel "Time[s]"
set ylabel "Probability"

set key autotitle columnhead

set tics out

plot '$FILE_NAME1' using 1:2 with lines lw 2 title "p(-),${TITLE1}",       \
     '$FILE_NAME1' using 1:3 with lines lw 2 title "p(+),${TITLE1}",       \
     '$FILE_NAME1' using 1:4 with lines lw 2 title "p(Nothing),${TITLE1}", \
     '$FILE_NAME2' using 1:2 with lines lw 2 title "p(-),${TITLE2}",       \
     '$FILE_NAME2' using 1:3 with lines lw 2 title "p(+),${TITLE2}",       \
     '$FILE_NAME2' using 1:4 with lines lw 2 title "p(Nothing),${TITLE2}"
quit
PLOT

rm -rf $FILE_NAME1 $FILE_NAME2

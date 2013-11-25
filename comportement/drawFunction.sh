#!/bin/bash

FILE_NAME=$1;

gnuplot -persist <<PLOT
set xrange [0:100]
set yrange [0:1]

set xlabel "Time[s]"
set ylabel "Probability"

set key autotitle columnhead

set tics out

plot '$FILE_NAME' using 1:2 with lines lw 2 title "p(-)", \
     '$FILE_NAME' using 1:3 with lines lw 2 title "p(+)", \
     '$FILE_NAME' using 1:4 with lines lw 2 title "p(Nothing)"
quit
PLOT

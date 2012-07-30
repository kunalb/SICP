#!/usr/bin/gnuplot
reset
set terminal png

set xlabel "sum"
set ylabel "tuples"

set title "Number of distinct ways to sum to a number"
set key reverse Left outside
set grid

set style data linespoints

plot "test.dat" using 1:3 title "slot 1", \
"" using 1:4 title "slot 2", \
"" using 1:5 title "slot 3", \
"" using 1:6 title "slot 4", \
"" using 1:7 title "slot 5", \
"" using 1:8 title "slot 6", \
"" using 1:9 title "slot 7", \
"" using 1:10 title "slot 8", \
"" using 1:11 title "slot 9", \
"" using 1:12 title "slot 10"
#

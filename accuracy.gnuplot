set terminal png
set output 'accuracy.png'

set grid
set ylabel "character accuracy"
set xlabel "iteration"
set key right bottom
set xrange [3000:]
set yrange [0.9:1]

plot 'errors.csv' u 1:(1-$2) with lines title 'testing',\
'' u 1:(1-$3) with lines title 'training'

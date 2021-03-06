reset
set ylabel 'time(sec)'
set style fill solid
set title 'perfomance comparison'
set term png enhanced font 'Verdana,10' size 1000,600
set output 'runtime.png'

plot [:][:0.150]'output.txt' using 2:xtic(1) with histogram title 'original', \
'' using 3:xtic(1) with histogram title 'optimized'  , \
'' using 4:xtic(1) with histogram title 'hash'  , \
'' using ($0-0.1):($2+0.005):2 with labels title ' ', \
'' using ($0+0.1):($3+0.005):3 with labels title ' ', \
'' using ($0+0.3):($4+0.005):4 with labels title ' '

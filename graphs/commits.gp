reset
set term png truecolor
set output "commits.png"
set style fill transparent solid 0.5 noborder
unset border
unset ytics
set xtics nomirror
set boxwidth 0.9
set xrange [2010:2019]
set title "Top Value 85k+"
plot "commits.dat" u 1:2 w boxes lc rgb"#5dc6ca" notitle

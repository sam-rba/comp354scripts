set terminal png
set output "compare.png"
plot "new.data" using 1:2 with lines title "New", \
	"old.data" using 1:2 with lines title "Old", \
	"ref.data" using 1:2 with lines title "Reference"

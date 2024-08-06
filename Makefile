INCS = -Iquantlibinst/include
LIBS = -Lquantlibinst/lib -lQuantLib
CFLAGS = -Wall -pedantic ${INCS}
LDFLAGS = -Wl,-rpath ./quantlibinst/lib ${LIBS}

compare.png: compare.gnuplot new.data old.data ref.data
	gnuplot $<

new.data: new
	./$< > $@

old.data: old
	./$< > $@

ref.data: ref.r
	Rscript $<
	sed -e 's/,/ /g' ref.csv > $@

new: new.o
	g++ -o $@ ${LDFLAGS} $^

old: old.o
	g++ -o $@ ${LDFLAGS} $^

%.o: %.cpp
	g++ -c ${CFLAGS} $<

clean:
	rm -f compare.png new old ./*.data ./*.o ref.csv

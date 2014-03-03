all:
	gcc puzzler.f90 -lgfortran -O3 -fopenmp -Wall -o puzzler

clean:
	rm -f puzzler

run:
	#OMP_NUM_THREADS=4 ./test
	OMP_NUM_THREADS=4 ./test 2

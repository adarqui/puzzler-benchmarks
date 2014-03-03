all:
	gcc -ggdb -g3 main.c puzzler.c -O3 -funroll-loops -Wall -fopenmp -o puzzler
#	gcc main.c puzzler.c -Ofast -unsafe-math-optimizations -O3 -funroll-loops -Wall -fopenmp -o puzzler
#	gcc main.c puzzler.c -O3 -fomit-frame-pointer -funroll-loops -Wall -fopenmp -o puzzler
# gcc -O3 -Q --help=optimizers|less
# -fconserve-stack -fjump-tables
#	gcc main.c puzzler.c -O3 -Ofast -Wall -fopenmp -o puzzler
#	gcc main.c puzzler.c -O3 -Ofast -Wall -march=native -Ofast -funroll-loops -fopenmp -o puzzler
#	gcc main.c puzzler.c -O3 -Wall -funroll-loops -march=native -fopenmp -o puzzler


clean:
	rm -f puzzler

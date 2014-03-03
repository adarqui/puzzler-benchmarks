all:
	gcc main.c puzzler.c -O3 -funroll-loops -Wall -fopenmp -o puzzler
	gcc -S main.c puzzler.c -O3 -funroll-loops -Wall -fopenmp
	cp main.s main.1.s
	cp puzzler.s puzzler.1.s
	gcc -dA -dp -S main.c puzzler.c -O3 -funroll-loops -Wall -fopenmp
	cp main.s main.2.s
	cp puzzler.s puzzler.2.s
	gcc -g -c main.c puzzler.c -O3 -funroll-loops -Wall -fopenmp
	objdump -d -M intel -S main.o > main.S
	objdump -d -M intel -S puzzler.o > puzzler.S
	gcc -E main.c puzzler.c -O3 -funroll-loops -Wall -fopenmp > e.c

clean:
	rm -f puzzler

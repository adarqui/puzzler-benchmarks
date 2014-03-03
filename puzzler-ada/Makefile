all:
	gcc -Wall -O3 -gnat12 -c puzzler.adb
	gnatbind puzzler.ali
	gnatlink puzzler.ali

clean:
	rm -f puzzler *.o *.ali

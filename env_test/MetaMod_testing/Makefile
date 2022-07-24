test1: main.o test.o
	g++ -g -Wall -std=c++11 main.o test.o -o test1
test.o: test.h test.cpp
	g++ -g -Wall -std=c++11 -c test.cpp
main.o: main.cpp
	g++ -g -Wall -std=c++11 -c main.cpp
clean:
	rm *.o test1

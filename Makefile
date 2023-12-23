all: hello

hello: main.o greeting.o
	g++ main.o greeting.o -o hello

main.o: main.cpp
	g++ -c main.cpp

greeting.o: greeting.cpp
	g++ -c greeting.cpp

clean:
	rm -rf *.o hello
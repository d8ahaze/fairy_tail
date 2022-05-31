all: main

prog_name = con_cpp_2022

bin_path = ../EMC2022.01_f01

sub0 = test.hpp test.cpp

sub1 = fairy_tail.hpp fairy_tail.cpp

main: main.cpp $(sub1)
	g++ -o $(prog_name) main.cpp $(sub1)
	mv $(prog_name) $(bin_path)

test0: $(sub0)
	g++ -save-temps -o test0 $(sub0)

test1: main.cpp $(sub1)
	g++ -Wall -Wextra -o test0 main.cpp $(sub1)
	mv test0 $(bin_path)

run:
	$(bin_path)/$(prog_name)

$(shell if [ -f ./$(prog_name) ]; then rm ./$(prog_name); fi)

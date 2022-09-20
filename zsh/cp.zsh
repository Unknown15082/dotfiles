function compile() {
	g++ -std=c++20 -Wall -Wextra -Wshadow "$1.cpp" -o "$1" 
}

CXX = g++
CXXFLAGS = -std=c++20 \
		   -g \
		   -Wall \
		   -Wextra \
		   -Wpedantic \
		   -Wreorder \
		   -Wunused \
		   -Wshadow \
		   -Werror=return-type

TARGET = bmi
SRC_FILES = main.cpp \
		 	bmi.cpp \
			io.cpp

$(TARGET): $(SRC_FILES)
	$(CXX) $(CXXFLAGS) $^ -o $@

clean:
	rm -rf *.o $(TARGET) $(TARGET).dSYM

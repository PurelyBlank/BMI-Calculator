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
SRC_DIR = src
LIB_DIR = lib
SRC_FILES = $(SRC_DIR)/main.cpp \
		 	$(SRC_DIR)/bmi.cpp \
			$(LIB_DIR)/io.cpp

INCLUDES = -I$(SRC_DIR) -I$(LIB_DIR)

$(TARGET): $(SRC_FILES)
	$(CXX) $(CXXFLAGS) $(INCLUDES) $^ -o $@

clean:
	rm -rf *.o $(TARGET) $(TARGET).dSYM

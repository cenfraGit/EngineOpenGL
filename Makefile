# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = `pkg-config --cflags glfw3` -I/glad/include

# Linker flags
LDFLAGS = `pkg-config --static --libs glfw3` -lGL

# Source files
SRCS = main.cpp glad/src/glad.c

# Output executable
TARGET = main

# Build target
all: $(TARGET)

$(TARGET): $(SRCS)
	$(CXX) -o $(TARGET) $(SRCS) $(CXXFLAGS) $(LDFLAGS)

# Clean target
clean:
	rm -f $(TARGET)


# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Iinclude -Iinclude/glfw -Iinclude/glad

# Linker flags
LDFLAGS = -lglfw -lGL -ldl -lm -lpthread

# Source files
SRCS = src/app.c include/glad/glad.c

# Output executable
TARGET = app

# Default rule
all: $(TARGET)

# Link the object files into the final executable
$(TARGET): $(SRCS)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRCS) $(LDFLAGS)

# Clean rule
clean:
	rm -f $(TARGET)

# Phony targets
.PHONY: all clean

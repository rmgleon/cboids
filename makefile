# Compiler
CC = x86_64-w64-mingw32-gcc

# Compiler flags
CFLAGS = -Iinclude -Iinclude/glfw -Iinclude/glad

# Linker flags
LDFLAGS = -L/mingw64/lib -lglfw3 -lopengl32 -lgdi32 -luser32 -lkernel32 -lwinmm

# Source files
SRCS = src/app.c include/glad/glad.c

# Output executable
TARGET = app.exe

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

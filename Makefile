# Detect system OS.
ifeq ($(OS),Windows_NT)
	detected_OS := Windows
else
	detected_OS := $(shell sh -c 'uname -s 2>/dev/null || echo not')
endif

C_SRCS=$(shell find src -name *.c)

OBJS=$(C_SRCS:.c=.o)

# Modify the executable name by yourself.
ifeq (,$(PROGRAM))
	PROGRAM=program
endif

ifeq ($(detected_OS),Windows)
	TARGET=$(PROGRAM).exe
else
	TARGET=$(PROGRAM)
endif

# Set the C standard.
ifeq (,$(C_STD))
	C_STD=c11
endif


.PHONY: all clean

all: dist/$(TARGET)

dist/$(TARGET): $(OBJS)
	$(CC) -o dist/$(TARGET) $(OBJS) $(LDFLAGS)

%.o:%.c
	$(CC) -std=$(C_STD) -c $< -o $@ $(CFLAGS) -I include

clean:
	$(RM) dist/$(TARGET) $(OBJS)

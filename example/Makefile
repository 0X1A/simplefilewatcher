INSTALL	= /usr/bin/env install
AR	= /usr/bin/env ar
ARFLAGS	= rcs
DEST	=
PREFIX	=
CC	= g++
BINDIR	=
LIBDIR	=
TARGET	= SimpleDemo
LINK	= g++
CFLAGS	= 
LFLAGS	=
LIBS	= -lsimplefilewatcher
INCDIR	= -I../src
LIBDIR	= -L../
CLEAN	=
DEL	= rm -f
SRC	= SimpleDemo.cpp
OBJ	= SimpleDemo.o


first: all

.PHONY: doc clean

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CC) -c $(CFLAGS) $(INCDIR) -o "$@" "$<"

.cc.o:
	$(CC) -c $(CFLAGS) $(INCDIR) -o "$@" "$<"

.cxx.o:
	$(CC) -c $(CFLAGS) $(INCDIR) -o "$@" "$<"

.C.o:
	$(CC) -c $(CFLAGS) $(INCDIR) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCDIR) -o "$@" "$<"

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(LFLAGS) -o $(TARGET) $(OBJ) $(LIBDIR) $(LIBS)

SimpleDemo.o: SimpleDemo.cpp
	$(CC) -c $(CFLAGS) $(INCDIR) -o SimpleDemo.o SimpleDemo.cpp $(LIBDIR) $(LIBS)


clean:
	$(DEL) $(OBJ)
	$(DEL) SimpleDemo
	$(DEL) 

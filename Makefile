INSTALL	= /usr/bin/env install
AR	= /usr/bin/env ar
ARFLAGS	= rcs
DEST	=
PREFIX	=
CC	= g++
BINDIR	=
LIBDIR	=
TARGET	= libsimplefilewatcher.a
LINK	= g++
CFLAGS	= 
LFLAGS	=
LIBS	= 
INCDIR	= -Isrc
LIBDIR	=
CLEAN	=
DEL	= rm -f
SRC	= src/FileWatcherWin32.cpp \
	src/FileWatcher.cpp \
	src/FileWatcherLinux.cpp \
	src/FileWatcherOSX.cpp
OBJ	= src/FileWatcherWin32.o \
	src/FileWatcher.o \
	src/FileWatcherLinux.o \
	src/FileWatcherOSX.o

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
	$(AR) $(ARFLAGS) $(TARGET) $(OBJ)

src/FileWatcherWin32.o: src/FileWatcherWin32.cpp
	$(CC) -c $(CFLAGS) $(INCDIR) -o src/FileWatcherWin32.o src/FileWatcherWin32.cpp

src/FileWatcher.o: src/FileWatcher.cpp
	$(CC) -c $(CFLAGS) $(INCDIR) -o src/FileWatcher.o src/FileWatcher.cpp

src/FileWatcherLinux.o: src/FileWatcherLinux.cpp
	$(CC) -c $(CFLAGS) $(INCDIR) -o src/FileWatcherLinux.o src/FileWatcherLinux.cpp

src/FileWatcherOSX.o: src/FileWatcherOSX.cpp
	$(CC) -c $(CFLAGS) $(INCDIR) -o src/FileWatcherOSX.o src/FileWatcherOSX.cpp

clean:
	$(DEL) $(OBJ)
	$(DEL) libsimplefilewatcher.a
	$(DEL) 

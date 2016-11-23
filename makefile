#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC = 
CFLAGS = -Wall
RESINC = 
LIBDIR = 
LIB = 
LDFLAGS = -lSDL2


INC_RELEASE = $(INC)
CFLAGS_RELEASE = $(CFLAGS) -O2
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR)
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE = $(LDFLAGS) -s
OBJDIR_RELEASE = obj/Release
DEP_RELEASE = 
OUT_RELEASE = bin/Release/nonogram

OBJ_RELEASE = $(OBJDIR_RELEASE)/clue.o $(OBJDIR_RELEASE)/graphics.o $(OBJDIR_RELEASE)/main.o $(OBJDIR_RELEASE)/myFunctions.o

all: release

clean: clean_release

before_release: 
	test -d bin/Release || mkdir -p bin/Release
	test -d $(OBJDIR_RELEASE) || mkdir -p $(OBJDIR_RELEASE)

after_release: 

release: before_release out_release after_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LIBDIR_RELEASE) -o $(OUT_RELEASE) $(OBJ_RELEASE)  $(LDFLAGS_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)/clue.o: clue.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c clue.cpp -o $(OBJDIR_RELEASE)/clue.o

$(OBJDIR_RELEASE)/graphics.o: graphics.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c graphics.cpp -o $(OBJDIR_RELEASE)/graphics.o

$(OBJDIR_RELEASE)/main.o: main.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c main.cpp -o $(OBJDIR_RELEASE)/main.o

$(OBJDIR_RELEASE)/myFunctions.o: myFunctions.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c myFunctions.cpp -o $(OBJDIR_RELEASE)/myFunctions.o

clean_release: 
	rm -f $(OBJ_RELEASE) $(OUT_RELEASE)
	rm -rf bin/Release
	rm -rf $(OBJDIR_RELEASE)

.PHONY: before_release after_release clean_release

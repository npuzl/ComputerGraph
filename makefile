#https://blog.csdn.net/sarono/article/details/86564726
CXX	:= g++
CXX_FLAGS:= -g -std=c++17 #-Wextra -Wall

SRC	:= src
INCLUDE:= ./include
LIB	:= ./lib

LIBRARIES:= -lglad -lglfw3dll
#EXECUTABLE:= main
EXECUTABLE:= $(SRC)/main.cpp

all:./$(SRC)

run: ./$(EXECUTABLE)
	$(CXX) $(CXX_FLAGS) -I$(INCLUDE) -L$(LIB) $^ -o $@ $(LIBRARIES)
	

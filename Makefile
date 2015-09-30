CC=valac
FLAGS=--pkg gtk+-3.0
 
SRC=$(wildcard src/*.vala)
EXEC=hostel
all : compile
 
compile :
	$(CC) $(FLAGS) $(SRC) -o $(EXEC)

run : 
	./$(EXEC)

clean :
	@rm $(EXEC)
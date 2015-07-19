OBJS = minimax.o board.o eval.o main.o
CC = clang
EXE = engine

all: $(OBJS)
	$(CC) $(OBJS) -o $(EXE)

minimax.o:
	$(CC) -c minimax.c

board.o:
	$(CC) -c board.c

eval.o: board.o
	$(CC) -c eval.c

main.o: minimax.o board.o eval.o
	$(CC) -c main.c

clean:
	rm -f $(OBJS) $(EXE)

CC = clang
CFLAGS = -g -Wall
TARGET = engine
SRCS = io.c board.c eval.c minimax.c engine.c
OBJS = $(SRCS:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

engine.o: engine.c board.h
	$(CC) $(CFLAGS) -c engine.c -o engine.o

board.o: board.c board.h
	$(CC) $(CFLAGS) -c board.c -o board.o

io.o: io.c io.h
	$(CC) $(CFLAGS) -c io.c -o io.o

eval.o: eval.c eval.h board.h
	$(CC) $(CFLAGS) -c eval.c -o eval.o

minimax.o: minimax.c minimax.h
	$(CC) $(CFLAGS) -c minimax.c -o minimax.o

clean:
	rm -f $(OBJS) $(TARGET)

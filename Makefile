CC=egcc -Wno-stringop-truncation
CFLAGS+=	-Wall -I/usr/local/include
LDFLAGS+=	-L/usr/local/lib -lssh2 -lssl -lcrypto

all: beleth

beleth: beleth.o lists.o ssh.o
	$(CC) beleth.o lists.o ssh.o $(LDFLAGS) -o beleth

beleth.o: beleth.c

lists.o: lists.c

ssh.o: ssh.c

clean:
	rm *.o beleth

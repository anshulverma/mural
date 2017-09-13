CC = g++
CFLAGS = -Wall -03

UNAME := $(shell uname)
ifeq ($(UNAME), Darwin)
	CFLAGS += -DNORT
else
	LDFLAGS += -lrt
endif

mural_server: *.cpp *.h
	$(CC) $(CFLAGS) *.cpp -o mural_server



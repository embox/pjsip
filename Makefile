
all : simpleua

simpleua : CFLAGS += -g
simpleua : LDFLAGS += -lpj -lpjsip -lpjlib-util -lpjsip-ua -lpjmedia

clean :
	rm -f simpleua

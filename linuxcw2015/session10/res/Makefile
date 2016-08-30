MAINTARGET := main
SOURCE := main.c stack.c maze.c
OBJS := ${SOURCE:.c=.o}

all: $(MAINTARGET)

$(MAINTARGET): $(OBJS)
	$(LINK.o) $^ $(OUTPUT_OPTION)

clean:
	-$(RM) $(MAINTARGET) $(OBJS)

.PHONY: clean
	
main.o stack.o maze.o: main.h
main.o maze.o: maze.h
main.o stack.o: stack.h

DEBUG = TRUE
FLAGS = -std=c11 -MMD -MP
ifdef DEBUG
FLAGS += -O0 -ggdb
else
FLAGS += -O3
endif

CFLAGS += 
ifdef DEBUG
CFLAGS += -DDEBUG
else
CFLAGS += -DNDEBUG
endif

LDFLAGS += -ltar

CC ?= cc

COMPILE = $(CC) $(CFLAGS) $(FLAGS) -c
LINK = $(CC) $(LDFLAGS) $(FLAGS)

SOURCES = main.c
OBJECTS =  $(SOURCES:.c=.o)
DEPENDENCIES = $(OBJECTS:.o=.d)

.PHONY: all clean

all: metapod
-include $(DEPENDENCIES)
clean:
	-rm -v $(OBJECTS) $(DEPENDENCIES) $(PROTOFILES) metapod

metapod: $(OBJECTS)
	$(LINK) -o$@ $^

%.o : %.c
	$(COMPILE) -o $@ $<

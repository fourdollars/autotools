SOURCES = hello_world.c
HEADERS = hello_world.h
CPPFLAGS += -fPIC
PREFIX ?= /usr/local
DESTDIR ?= $(shell pwd)

LIB = $(addprefix lib,$(patsubst %.c,%,$(firstword $(SOURCES))))
SHARED = $(addsuffix .so,$(LIB))
STATIC = $(addsuffix .a,$(LIB))
OBJS = $(patsubst %.c,%.o, $(SOURCES))

all: $(SHARED) $(STATIC)

$(SHARED): $(OBJS)
	$(CC) -shared -fPIC -o $@ $^

$(STATIC): $(OBJS)
	$(AR) cr $@ $^

$(SOURCES): $(HEADERS)

clean:
	$(RM) $(SHARED) $(STATIC) $(OBJS)

install: $(SHARED) $(STATIC) $(HEADERS)
	mkdir -p $(DESTDIR)$(PREFIX)/lib
	install $(SHARED) $(DESTDIR)$(PREFIX)/lib
	install $(STATIC) $(DESTDIR)$(PREFIX)/lib
	mkdir -p $(DESTDIR)$(PREFIX)/include
	install $(HEADERS) $(DESTDIR)$(PREFIX)/include

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/lib/$(SHARED)
	$(RM) $(DESTDIR)$(PREFIX)/lib/$(STATIC)
	$(RM) $(foreach header,$(HEADERS),$(addprefix $(DESTDIR)$(PREFIX)/include/, $(header)))
	-rmdir $(DESTDIR)$(PREFIX)/lib/
	-rmdir $(DESTDIR)$(PREFIX)/include/
	-rmdir $(DESTDIR)$(PREFIX)

.PHONY: clean uninstall

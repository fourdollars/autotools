# ifeq ($(CC),gcc)
#     CPPFLAGS = -Wall
#     CFLAGS = -g
# endif

# ifdef DEBUG
#     CPPFLAGS = -Wall
#     CFLAGS = -g
# endif

hello: hello.o

clean: ; $(RM) hello hello.o
	@echo done

.PHONY: clean

# %.o : %.c
#     $(CC) -Wall -c $(CFLAGS) $(CPPFLAGS) -o $@ $< 

# %.o : CFLAGS = -g

foo = $(bar)
bar = $(ugh)
ugh = Huh?
all:;@echo $(foo)

x := foo
y := $(x) bar
x := later
xy:;@echo $(x) $(y)

a := foo
a ?= bar
b := $(a)
ab:;@echo $(a) $(b)

files := $(wildcard *.c *.html)
wildcard:;@echo $(files)

subst := $(subst html,HTML,$(files))
subst:;@echo $(subst)

patsubst := $(patsubst %.c,%.o,$(files))
patsubst:;@echo $(patsubst)

list := 'a   b   c   '
list:;@echo $(list)
strip := $(strip $(list))
strip:;@echo $(strip)

suffix := $(suffix $(files))
suffix:;@echo $(suffix)

# $(error   This is error.)
# $(warning This is warning.)
# $(info    This is info.)

# list_files = $(foreach item,$(1),$(info $(item))) 
# info_msg = $(info $(1))
# $(if $(findstring make.html, $(files)), \
#     $(call list_files, $(files)), \
#     $(call info_msg, 'I can not find make.html') \
# )

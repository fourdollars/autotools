hello: hello.o

clean: ; $(RM) hello hello.o
	@echo done

.PHONY: clean

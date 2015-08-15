#make all
make:
	mkdir -p build
	@for f in *.lisp; do clisp -q -c "$$f" -o "build/"; done

#clean
clean:
	rm build/*

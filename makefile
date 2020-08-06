all:
	make -C iterative
	make -C recursive

clean:
	make -C iterative clean
	make -C recursive clean

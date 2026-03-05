GFLAGS:=--coverage -fcondition-coverage
#GFLAGS:=--coverage
CFLAGS:=$(GFLAGS) --save-temps

CC:=/usr/bin/gcc

OBJ:=main.o minicond.o

.PHONY: run e1 e2 e12 cov gcovr

run: $(OBJ)
	cc -o $@ $(^) -lgcov

all: run

e12: run
	./run || true
	./run a b c || true
	$(MAKE) cov gcovr

e1: run
	./run || true
	$(MAKE) cov gcovr

e2: run
	./run a b c || true
	$(MAKE) cov gcovr

cov:
	gcov --conditions -t minicond.gcda

gcovr:
	gcovr --txt-metric branch --print-summary || echo "** No gcovr - sorry"


clean:
	rm -f $(OBJ) run *.gcda *.gcno *.i *.s *.o *.obj *.gcov *~



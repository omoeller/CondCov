GFLAGS:=--coverage -fcondition-coverage
#GFLAGS:=--coverage
CFLAGS:=$(GFLAGS) --save-temps

OBJ:=main.o minicond.o

run: $(OBJ)
	cc -o $@ $(^) -lgcov

all: run

e12: run
	./run || true
	./run a b c || true
	$(MAKE) cov

e1: run
	./run || true
	$(MAKE) cov

e2: run
	./run || true
	$(MAKE) cov


cov:
	gcov --conditions -t minicond.gcda

clean:
	rm -f $(OBJ) run *.gcda *.gcno *.i *.s *.gcov *~






#GFLAGS:=--coverage -fcondition-coverage
GFLAGS:=--coverage
CFLAGS:=$(GFLAGS) --save-temps

TOOLDIR:=/usr
#TOOLDIR:=/opt/gcc-14.3.0
BINDIR:=$(TOOLDIR)/bin/
#BINDIR:=$(TOOLDIR)/bin/arm-none-eabi-

CC:=$(BINDIR)gcc

OBJ:=main.o minicond.o

.PHONY: run e1 e2 e12 cov gcovr

run: $(OBJ)
	LD_LIBRARY_PATH=$(TOOLDIR)/lib64:$${LD_LIBRARY_PATH} $(CC) -o $@ $(^) -lgcov

all: run

version:
	$(CC) --version

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
	$(BINDIR)gcov --conditions -t minicond.gcda

gcovr:
	gcovr --txt-metric branch --print-summary || echo "** No gcovr - sorry"


clean:
	rm -f $(OBJ) run *.gcda *.gcno *.i *.s *.o *.obj *.gcov *~



COMPILE = gfortran

COMLIB1 =

COMOTT1 = -O0 -Wall -Wextra

COMCONV = 

FILES = \
	calc_enthalpy.o \
	cklib.o \



.SUFFIXES: .f .o

.f.o:
	$(COMPILE) $(COMOTT1) $(COMCONV) -c $<

calc_enthalpye: $(FILES)
	$(COMPILE) $(COMOTT1) $(COMCONV) $(FILES) -o calc_enthalpye $(COMLIB1)

calc_enthalpy.o: calc_enthalpy.f
cklib.o: cklib.f
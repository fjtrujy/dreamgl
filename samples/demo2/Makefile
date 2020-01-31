EE_BIN = demo2.elf
EE_OBJS = demo2.o ../main_ps2.o
EE_LIBS += -ldreamgl -lps2Perf
EE_INCS += -I$(PS2DEV)/dreamgl/include -I$(PS2DEV)/ps2Perf/include
EE_CFLAGS += -DDGL_PS2
EE_LDFLAGS += -L$(PS2DEV)/dreamgl/lib -L$(PS2DEV)/ps2Perf/lib

include $(PS2SDK)/samples/Makefile.pref
include $(PS2SDK)/samples/Makefile.eeglobal

clean:
	rm -f -r $(EE_OBJS) $(EE_BIN)

all: $(EE_BIN)
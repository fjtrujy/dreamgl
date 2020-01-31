EE_BIN = demo1.elf
EE_OBJS = demo1.o ../main_ps2.o
EE_LIBS += -ldreamgl 
EE_INCS += -I$(PS2DEV)/dreamgl/include 
EE_CFLAGS += -DDGL_PS2
EE_LDFLAGS += -L$(PS2DEV)/dreamgl/lib 

include $(PS2SDK)/samples/Makefile.pref
include $(PS2SDK)/samples/Makefile.eeglobal

clean:
	rm -f -r $(EE_OBJS) $(EE_BIN)

all: $(EE_BIN)
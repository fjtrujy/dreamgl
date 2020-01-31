EE_BIN = demo4.elf
EE_OBJS = tunnel.o demo5.o ../main_ps2.o
EE_LIBS += -ldreamgl
EE_INCS += -I$(PS2DEV)/dreamgl/include 
EE_CFLAGS += -DDGL_PS2 -O0 -g
EE_LDFLAGS += -L$(PS2DEV)/dreamgl/lib 

include $(PS2SDK)/samples/Makefile.pref
include $(PS2SDK)/samples/Makefile.eeglobal

clean:
	rm -f -r $(EE_OBJS) $(EE_BIN)

all: $(EE_BIN)

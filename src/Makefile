#  _____     ___ ____
#   ____|   |    ____|      PS2 OpenSource Project
#  |     ___|   |____       (C)2020, Francisco Javier Trujillo Mata 
#						      ( fjtrujy@gmail.com )
#  ---------------------------------------------------------------------------


EE_OBJS_DIR = ../obj/
EE_LIB_DIR = ../lib/
EE_LIB = $(EE_LIB_DIR)libdreamgl.a
EE_INC = ../include/
EE_INCS += -I$(EE_INC)
EE_CFLAGS += -DDGL_PS2

C_OBJS = ee.o \
	gs.o \
	gl.o \
	dgl.o \
	ps2_dgl.o \
	gl_color.o \
	gl_enable.o \
	gl_matrix.o \
	gl_texcoord.o \
	gl_texture.o \
	gl_vertex.o \

S_OBJS = ee_asm.o \
	dma_asm.o \
	gs_asm.o

EE_OBJS += $(C_OBJS) $(S_OBJS)

all: $(EE_OBJS_DIR) $(EE_LIB_DIR) $(EE_LIB)

$(EE_OBJS_DIR):
	mkdir -p $(EE_OBJS_DIR)

$(EE_LIB_DIR):
	mkdir -p $(EE_LIB_DIR)

$(EE_OBJS_DIR)%.o : %.c
	$(EE_C_COMPILE) -c $< -o $@

install: all
	mkdir -p $(DESTDIR)$(PS2DEV)/dreamgl/lib
	cp -f $(EE_LIB) $(DESTDIR)$(PS2DEV)/dreamgl/lib
	mkdir -p $(DESTDIR)$(PS2DEV)/dreamgl/include
	cp -f $(EE_INC)GL/*.h $(DESTDIR)$(PS2DEV)/dreamgl/include

clean:
	rm -rf $(EE_OBJS) $(EE_OBJS_DIR) $(EE_LIB_DIR)

include $(PS2SDK)/samples/Makefile.pref
include $(PS2SDK)/samples/Makefile.eeglobal

# Specific assembly compilation
%.o: %.s
	$(EE_CC) -xassembler-with-cpp -c $(CFLAGS) $< -o $@
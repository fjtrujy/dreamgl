#----------------------------------------------------------------------------
# File:		Makefile for PS2CPU Version
# Author:	Tony Saveski, tony@ui.com.au
#----------------------------------------------------------------------------
# Copyright (c) 2003, Unicorn Interactive Pty Ltd.
# All Rights Reserved.
#----------------------------------------------------------------------------
# Licenced under Academic Free License version 2.0
# Read DreamGL LICENSE.txt file for further details.
#----------------------------------------------------------------------------

DIR_SRC_PS2CPU=src
DIR_SRC_SAMPLES=samples

all: library demos

library:
	$(MAKE) -C $(DIR_SRC_PS2CPU)

demos:
	$(MAKE) -C $(DIR_SRC_SAMPLES)

install:
	$(MAKE) -C $(DIR_SRC_PS2CPU) install

clean:
	$(MAKE) -C $(DIR_SRC_SAMPLES) clean
	$(MAKE) -C $(DIR_SRC_PS2CPU) clean

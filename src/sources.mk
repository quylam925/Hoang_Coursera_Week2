
#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************

HOME = ..
# Add your Source files to this variable
ifeq ($(PLATFORM),MSP432)
SOURCES = main.c \
	memory.c \
	startup_msp432p401r_gcc.c \
	interrupts_msp432p401r_gcc.c \
	system_msp432p401r.c
else
SOURCES = main.c \
	memory.c		
endif

# Add your include paths to this variable

ifeq ($(PLATFORM),MSP432)
INCLUDES = -I $(HOME) \
	-I $(HOME)/include/CMSIS \
	-I $(HOME)/include/common \
	-I $(HOME)/include/msp432 \
	-I $(HOME)/src \
		
else
INCLUDES = -I $(HOME)/include/common \
	-I $(HOME)/src \
	-I $(HOME)
endif

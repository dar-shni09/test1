TOPLEVEL_LANG ?= verilog
export COUNT=5


PWD := $(shell pwd)

VERILOG_SOURCES = \
  $(shell pwd)/FIFO2.v \
  $(shell pwd)/mkcombo_mul.v \
  $(shell pwd)/mkrestoring_div.v \
  $(shell pwd)/FIFOL1.v \
  $(shell pwd)/signedmul.v \
  $(shell pwd)/mkmbox.v

TOPLEVEL := mkmbox
MODULE   := test_divider   # Or test_divider if that's your testbench name

include $(shell cocotb-config --makefiles)/Makefile.sim

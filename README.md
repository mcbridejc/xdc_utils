xdc_utils
=========

Simple Ruby utility generating pin assignment constraints in Xilinx XDC 
constraints file format from a CSV. This way you can edit the pin out in a 
spreadsheet, rather than the verbose TCL format, or the awkward to use 
xilinx pin editor. 

Someday this might do some validation of an XDC file against a verilog module,
 and check for things such as duplicate pin assignments.



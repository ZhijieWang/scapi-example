Reformat and cleaned up Example code from libscapi demo
This allows writing code outside of the libscapi folder and import only nessary dependencies.

This is only the initial verion. Futher changes need to happen to libscapid build process, exporting all libs and includes. Currently some of the header files are not included in the build directory by libscapi make process.

Also, currently using libscapi boost version. Should use system libboost artificats.
This example main.cpp only demonstrates compile. Some of its config folders are staticly encoded. Would cause a problem


This assumes you have already installed and compiled libscapi. If you have not done so, go to libscapi github page and follow their instructions.

You should edit the Makefile and change the libscapi path to your installation path or your LD_LOAD_PATH that includes the necessary components

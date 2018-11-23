# Test Execution
This includes the MBT systems to support the execution of different test cases for applications over PHANTOM platform. 

## MBT Function Test

1:
After unzipping this archive file in any directory run install.sh from mbttest directory:
> cd ./mbttest
> ./install.sh

This
- creates a ./bin directory
- creates symlinks to the necessary source files
- creates a Makefile suitable to compile the project
- compiles the project having the final executable name to be "mbttest"

2:
Go inside the new bin directory:
> cd ./bin

3:
Edit the configuration file MyExample.cfg using any editor, e.g. emacs:
> emacs ./MyExample.cfg

###
emacs is not installed by default on all systems, on Ubuntu it can be installed with the command:
> sudo apt install emacs
###

4:
Run the test suite using the following command:
> ttcn3_start ./mbttest ./MyExample.cfg




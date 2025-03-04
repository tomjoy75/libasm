# PURPOSE: Simple program that exits and returns a
#          status code back to the Linux kernel

# INPUT: none

# OUTPUT: returns a status code. This can be viewed
#         by typing
#
#         echo $?
#
#
# after running the program
#

# VARIABLES:
#   %eax holds the system call number
#   %ebx holds the return status

.section .data		# assembler directive or pseudo operation_Begin with .
			# (Not directly transcribed in machine__Only for assembler) 
			# .section : breaks the program in sections
			# .data    : list any memory storage needed
.section .text		# .text    : program instructions
    .globl _start	# _start is a label and will be replaced during assembly or linking
			# .globl   : shouldn't discard after assembly
_start:
    movl $1, %eax      # this is the linux kernel command
                       # number (system call) for exiting
                       # a program

    movl $0, %ebx      # this is the status number we will
                       # return to the operating system.
                       # Change this around and it will
                       # return different things to
                       # echo $?

    int $0x80          # this wakes up the kernel to run
                       # the exit command

			# Other operations: addl, subl, imull, idivl (add/sub/multi/idivl)

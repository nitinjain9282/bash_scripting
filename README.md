-------------------------------------------------------------------------------------------------------------
This is about basics of shell scripting

Note: #!/bin/bash or #!/usr/bin/env bash   ==> shebang it refers to execve() function. When this is run kernel passes path to original program as command line argument.
so ./testing.sh gets executed as /bin/bash ./testing.sh
On other hand, env will look for bash in your path.
-------------------------------------------------------------------------------------------------------------
#variables
- created when we assign a value or with export command
- remove it with unset command 
- reference it with $myvar 
- for a shell script to get copy of shell variable it need to be exported: export mynewvar or declare -x mynewvar
- for function we can use export -f myfunc.
- typing just export tells which variables are part of shell environment. 

Example: echoes.sh

#enable
- we can get list of bash bullitins using enable command 
- prefers bullitins, keywords, aliases and functions over commands in FS. 

#compgen -k
- it list keywords 

#.bash_profile
- it is invoked when bash  shell is started
- it is used to customize settings in bash
- .bashrc is executed with every bash shell. 
- exporing an exported variable is usiually done in .bas_profile but not in .bashrc since it will grow with each nested shell invokation. 
- alias and functions are not exported so if we want it to be available in every shell it should be in .bashrc

# source <mysciprt>.sh
- sourcing the script to import set of variables and fucntions in current shell
- . ./<mysciprt>.sh   OR  source <mysciprt>.sh ==> produce same results

#echo
- doesn't start new process
- options used are -n, -e, -E etc.

Example: echoes.sh

-------------------------------------------------------------------------------------------------------------
#Assigning variables: 
- typeset command makes variable local.  
- declare -l myvar  ==> if myvar has uppercase values it would be converted to lowercase automatically.
- declare -u myvar ==> to convert to uppdercase automatically.
- declare -r myvar ==> variable is read only. 
 
Example: typeset.sh, declare.sh

# reading input with read command. 
- read a b ==> reads first word to a and second to b
- can combine with while or for loop too. 

Example: while_1.sh, while_2.sh,while_read.sh

#for loop

- command handy with for loop is seq command. seq 1 5  ==> it prints 1 2 3 4 5

Example: for_1.sh, for_2.sh

#function()
- it executes within shell and not in new process
- it gives names to sequence of statements. 
- using exit in function will terminates whole shell program but not just the function
- exit terminates the shell process. we can get exit status value with special variable called '$?'
- export -f functionname ==> this will export function to new shell

#redirection for file
- 0 ==> stdin, 1==> stdout , 2==>stderr
- command > stdout-here
- command 2 > stderr-here
- command < stdin-from-here
- command &> file #file gets stdout and stderr from command. file is created or overwritten.
- command1 | command2 ==> stdout of command1 is stdin of command2
- command 2>&1 | command2 ==> gets stdout and stderr from command. 
- command |& command2 ==> alternative way to get stdout and stderr from command
- command >> file ==> file is created or appended if exists. 
- command  &>> file ==> appends sdout and stderr at end of file. 

Examples: sort.sh

#open and close file descriptors 
- exec N< myFile ==> open file descriptor N for reading from file myFile
- exec N>myFile ==>  open file descriptor N for writing to file myFile
- exec <>N myFile ==> open file descriptor N for both reading and writing with myFile
- exec N>&- or execN<&- ==> closes file descirptor N
- lsof ==> to see what file descriptors for a process is open. 
- lsof -p $$ ==> $$ is process id of shell. it gives which file descriptor and which process are open in shell.

Examples: here.sh

# case, if-else 
- above are some of other loop commonly used in bash

# tests in bash
- builtin test is used to check various conditions and set the return code with the result.
- loops and conditionals often use result of test
- an alternative to test is [[]] or (())
- if  [[-f afile]] ==> if afile exists
- if 
  test $x -gt 5
- 
Examples: case_1.sh,compare.sh,ifthen.sh, exercise.sh
-------------------------------------------------------------------------------------------------------------
#Filter
- a program is a filter if it reads from stdin and writes to stdout
- filter can be used in pipes
# head and tail commands 
- head -5 , tail -200 etc. 
- wc -l , wc -w etc. ==> word count for lines, words etc. 

Examples: makeoutput.sh,

#sed
- works great as filter
- its a stream editor which means its non interactive. 
- -i option to change file
- sed 's/old/new/' myfile ==> substitue the first occurence of old on each line for new in myfile and display result on stdout.

# awk
- pattern matchin language
- it works as a filter.
- good for report writing. 
- processes a line at a time like sed
- breaks each line into fields, $1, $2 etc.
- $0 is entire line
- fields are delimitted in values by variable FS, normally white space. 

Examples: sed_1.sh,awk1

# Script parameters and {}
- parameters to shell program : $1, $2 .. are called positional parameters.
- $0 is path to program itself. 
- Shift is used to move positional arguments. 

#indirection
- x=abc
  abc=def
  echo ${!x} ===> prints def,this is called indirection. prints value of variable assigned to x.

#unset or null variables
- ${variable <OPR> value}
x=${var:- Hotdog} ==> if var unset/null return value, otherwise return value of var. So if var is set it will be value assigned to var.
:= ==> if var is unset/null var is assigned value and returned.
:? ==> displays error and exit script if var unset/null.
:+ ==> if var unset/null then return nothing, otherwise return value.
${var:offset} ==> value of var starting at offset.
${var:offset:len} ==> value of var starting at offset upto length len.
${#var} ==> length of variable.

Examples: unsetnull.sh,pos.sh, indirect.sh, string.sh,prepost.sh,challenge.pos.sh

-------------------------------------------------------------------------------------------------------------
#Advanced Bash:








-------------------------------------------------------------------------------------------------------------























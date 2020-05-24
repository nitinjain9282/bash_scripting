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
-------------------------------------------------------------------------------------------------------------





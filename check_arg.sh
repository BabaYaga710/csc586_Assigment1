if [ $1=$USER ]; then
  echo "Options and arguments okay"
  exit 0
elif [ $1="i" && $2=$USER]; then
  echo "Options and arguments okay
        running in interactive mode"
  exit 0
elif [ $1="n" && $2=$USER]; then
  echo "Options and arguments okay
        running in NON-interactive mode"
  exit 0
elif [ $1=""]
  echo "Please provide correct arguments and options
	        Usage: ./check_arg.sh [-i|-n] [USERS]
	        Options (optional): -i or -n for interactive or non-interactive execution
	        Arguments: list of user names
	        Every user name must match this regular expression: '^[a-z][a-z0-9_]*$'" 1>&2
  exit 1
else 
  echo "ERR: option after an argument or wrong argument or wrong option 2:" + $?
  echo "Please provide correct arguments and options
        Usage: ./check_arg.sh [-i|-n] [USERS]
	      Options (optional): -i or -n for interactive or non-interactive execution
	      Arguments: list of user names
	      Every user name must match this regular expression: '^[a-z][a-z0-9_]*$'"

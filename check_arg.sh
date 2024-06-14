#!/bin/bash

#Take argument and make sure it has the right format
username() {
	local username="$1"
	if ! [[ "$username" =~ ^[a-z][a-z0-9_]*$ ]]; then
		echo "Error: enter correct username format"
		exit 1
	fi
}

#Declare default mode as interactive
typemode="interactive"
users=()

#mode check--n=noninteractive i=interactive
option_n=false
option_i=false

#Do while loop to ensure there are two types of mode possible
while [[ $# -gt 0 ]]; do
	case $1 in
	-i)
		if $option_n; then
			echo "ERROR: Cannot use two options"
			exit 1
		fi

		typemode="interactive"
		$option_i=true
	 	;;
	-n)
		if $option_i; then
			echo "ERROR: Cannot use two options"
			exit 1
		fi
		typemode="noninteractive"
		option_n=true
		;;
	 *)
		username "$1"
		users+=("$1")
		;;
	esac
	shift
done

#Catches if no i or n options were used
if ! $option_i && ! $option_n; then
	echo "ERROR: Must use one of the options"
	exit 1
fi

#Ending Print statements
echo "Interactive or Non-interactive: $typemode"
echo "End of execute"

#Close program
exit 0

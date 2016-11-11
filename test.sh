#!/bin/bash

# Process arguments:
while getopts ":cmrh" opt; do
    	case $opt in
	c)echo "c parameter entered";
		;; # Handle -c argument (copy)
	m)echo "m parameter entered";
		;; # Handle -m argument (move)
	r)echo "r parameter entered";
		;; # Handle -r argument (remove)
	h)echo "This is help";
		;; # Handle -h argument
    	\?)echo "Invalid option: -$OPTARG" >&2;
		exit 1;
		;; # Handle error: unknown option or missing required argument.
	:)echo "Option -$OPTARG requires argument." >&2;
		exit 1;
		;; # Handle no-argument to option with argument"
	esac
done
ext1=${@:$OPTIND:1}
ext2=${@:$OPTIND+1:1}
echo "ext1: $ext1"
echo "ext2: $ext2"

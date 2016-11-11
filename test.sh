#!/bin/bash

root=$1
shift
# Process arguments:
while getopts ":cmrh" opt; do
	case $opt in
	c)echo "copy parameter entered";
		;; 
	m)echo "move parameter entered";
		;; 
	r)echo "remove parameter entered";
		;; 
	h)echo "This is help";
		;; 
    \?)echo "Invalid option: -$OPTARG" >&2;
		exit 1;
		;; 
	:)echo "Option -$OPTARG requires argument." >&2;
		exit 1;
		;; 
	esac
done
ext1=${@:$OPTIND:1}
ext2=${@:$OPTIND+1:1}
echo "All in directory: $root"
echo "ext1: $ext1"
echo "ext2: $ext2"

#!bin/bash
while getopts u:a:f: flag
do
	case "${flag}" in
		u) username=${OPTARG};;
		a) age=${OPTARG};;
		f) fullname=${OPTARG};;
	esac
done

for arg in "$@"
do
	echo "Arg: $arg"
	if [ $arg = "-j" ]; then
		echo "Java adopted"
	fi
done

echo "Username: $username";
echo "Age: $age";
echo "Full Name: $fullname";
echo "Language: $lang";

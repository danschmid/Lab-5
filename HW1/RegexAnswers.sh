#Daniel Schmidt

if [ -z "$1"]
then 
	echo "Usage: RegexAnswers.sh filename"
	exit 1
fi

egrep -c '.*[0-9]$' $1
egrep -v -c '^[aeiouAEIOU]' $1
egrep -c '^[a-zA-Z]{12}$' $1
egrep -c '^[0-9]{3}-[0-9]{3}-[0-9]{4}$' $1
egrep -c '^303-[0-9]{3}-[0-9]{4}$' $1
egrep -c '^[aeiouAEIOU].*[0-9]$' $1
egrep -c '^.*@geocities.com' $1
egrep -c '^[a-mA-M]{1}[a-zA-Z]+\.[a-zA-Z]+@[a-zA-Z]+\.[a-zA-Z]+$' $1
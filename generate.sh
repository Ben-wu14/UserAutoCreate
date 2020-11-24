#!/bin/bash
# Create by Ben wu // Email:ben_wu@qq.com
# In linux 0 is true / 1 is false
flg=1
#If not set the group name will be 622
group=622
file="username"
while read line; do
	# check if it's time to set group number
	if [[ $flg -eq 0 ]]; then
		# if flg is 0, set the group number
		group=$line
		groupadd $group
		flg=1
		# echo $group
	else
		if [[ $line = '---' ]]; then
			#The next line will be the group number, set flg=0
			flg=$?
		else
			#Add user
			echo "{Create user}" $line "{Group}" $group

			sh createuser.sh $line $group
		fi
	fi
	
done < $file

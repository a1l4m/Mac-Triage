#!/bin/bash

targetsource=${BASH_SOURCE[0]}
targetname=${targetsource/$targetpath/}
FILE_STDERR="${computername}/${computername}_Processing_Details.txt"
exec 2> >(tee -a "${FILE_STDERR}" >&2)


echo ""
echo -e "\n** Now running ${targetname} target **" | tee -a "${computername}/${computername}""_Processing_Details.txt"

mkdir -p ${computername}/${cname}-Triage/Users

for i in `ls /Users/`
do


#FILE COPYING SECTION
	# Copying ssh known hosts file, found under /Users/<username>/.ssh/known_hosts
	if [ -f "/Users/${i}/.ssh/known_hosts" ]; then
        #Copy known_hosts file for each user
		echo -e "\nCommand Run: cp -f /Users/${i}/.ssh/known_hosts ${computername}/${cname}-Triage/Users/${i}/.ssh/known_hosts" | tee -a "${computername}/${computername}""_Processing_Details.txt"
		mkdir -p ${computername}/${cname}-Triage/Users/${i}/.ssh
		cp -f "/Users/${i}/.ssh/known_hosts" ${computername}/${cname}-Triage/Users/${i}/.ssh/known_hosts
	else
		echo -e "** File /Users/${i}/.ssh/known_hosts does not exist ***" | tee -a "${computername}/${computername}""_Processing_Details.txt"
	fi
	
	
	#Library User Edit Start 
	if [ -d "/Users/${i}/Library" ]; then
        echo -e "\nCommand Run: mkdir -p ${computername}/${cname}-Triage/Users/${i}/Library" | tee -a "${computername}/${computername}""_Processing_Details.txt"
        mkdir -p ${computername}/${cname}-Triage/Users/${i}/Library
		# Safari files copy
		if [ -d "/Users/${i}/Library/Safari/" ]; then
			mkdir -p ${computername}/${cname}-Triage/Users/${i}/Library/Safari
			echo -e "\nCommand Run: cp -rf /Users/${i}/Library/Safari/* ${computername}/${cname}-Triage/Users/${i}/Library/Safari" | tee -a "${computername}/${computername}""_Processing_Details.txt"
			cp -rf "/Users/${i}/Library/Safari/"* ${computername}/${cname}-Triage/Users/${i}/Library/Safari
		else
			echo -e "** Directory /Users/${i}/Library/Safari does not exist ***" | tee -a "${computername}/${computername}""_Processing_Details.txt"
		fi
		# LaunchAgents files copy
		if [ -d "/Users/${i}/Library/LaunchAgents" ]; then
			mkdir -p ${computername}/${cname}-Triage/Users/${i}/Library/LaunchAgents
			echo -e "\nCommand Run: cp -rf /Users/${i}/Library/LaunchAgents/* ${computername}/${cname}-Triage/Users/${i}/Library/LaunchAgents" | tee -a "${computername}/${computername}""_Processing_Details.txt"
			cp -rf "/Users/${i}/Library/LaunchAgents/"* ${computername}/${cname}-Triage/Users/${i}/Library/LaunchAgents
		else
			echo -e "** Directory /Users/${i}/Library/LaunchAgents does not exist ***" | tee -a "${computername}/${computername}""_Processing_Details.txt"
		fi
		# KeyChain files copy
		mkdir -p ${computername}/${cname}-Triage/Users/${i}/Library/Keychains
		echo -e "\nCommand Run: cp -rf /Users/${i}/Library/Keychains/* ${computername}/${cname}-Triage/Users/${i}/Library/Keychains" | tee -a "${computername}/${computername}""_Processing_Details.txt"
		cp -rf "/Users/${i}/Library/Keychains/"* ${computername}/${cname}-Triage/Users/${i}/Library/Keychains
		# Logs files copy
		mkdir -p ${computername}/${cname}-Triage/Users/${i}/Library/Logs
		echo -e "\nCommand Run: cp -rf /Users/${i}/Library/Logs/* ${computername}/${cname}-Triage/Users/${i}/Library/Logs" | tee -a "${computername}/${computername}""_Processing_Details.txt"
		cp -rf "/Users/${i}/Library/Logs/"* ${computername}/${cname}-Triage/Users/${i}/Library/Logs
		# Preferences files copy
		mkdir -p ${computername}/${cname}-Triage/Users/${i}/Library/Preferences
		echo -e "\nCommand Run: cp -rf /Users/${i}/Library/Preferences/* ${computername}/${cname}-Triage/Users/${i}/Library/Preferences" | tee -a "${computername}/${computername}""_Processing_Details.txt"
		cp -rf "/Users/${i}/Library/Preferences/"* ${computername}/${cname}-Triage/Users/${i}/Library/Preferences
		# Mail files copy
		mkdir -p ${computername}/${cname}-Triage/Users/${i}/Library/Mail
		echo -e "\nCommand Run: cp -rf /Users/${i}/Library/Mail/* ${computername}/${cname}-Triage/Users/${i}/Library/Mail" | tee -a "${computername}/${computername}""_Processing_Details.txt"
		cp -rf "/Users/${i}/Library/Mail/"* ${computername}/${cname}-Triage/Users/${i}/Library/Mail
		# Favorites files copy
		mkdir -p ${computername}/${cname}-Triage/Users/${i}/Library/Favorites
		echo -e "\nCommand Run: cp -rf /Users/${i}/Library/Favorites/* ${computername}/${cname}-Triage/Users/${i}/Library/Favorites" | tee -a "${computername}/${computername}""_Processing_Details.txt"
		cp -rf "/Users/${i}/Library/Favorites/"* ${computername}/${cname}-Triage/Users/${i}/Library/Favorites
		# Favorites files copy
		mkdir -p ${computername}/${cname}-Triage/Users/${i}/Library/Favorites
		echo -e "\nCommand Run: cp -rf /Users/${i}/Library/Favorites/* ${computername}/${cname}-Triage/Users/${i}/Library/Favorites" | tee -a "${computername}/${computername}""_Processing_Details.txt"
		cp -rf "/Users/${i}/Library/Favorites/"* ${computername}/${cname}-Triage/Users/${i}/Library/Favorites
		# Application Support files copy
		mkdir -p ${computername}/${cname}-Triage/Users/${i}/Library/Application-Support
		echo -e "\nCommand Run: cp -rf /Users/${i}/Library/Application Support/* ${computername}/${cname}-Triage/Users/${i}/Library/Application-Support" | tee -a "${computername}/${computername}""_Processing_Details.txt"
		cp -rf "/Users/${i}/Library/Application Support/"* ${computername}/${cname}-Triage/Users/${i}/Library/Application-Support
		# Accounts files copy
		mkdir -p ${computername}/${cname}-Triage/Users/${i}/Library/Accounts
		echo -e "\nCommand Run: cp -rf /Users/${i}/Library/Accounts/* ${computername}/${cname}-Triage/Users/${i}/Library/Accounts" | tee -a "${computername}/${computername}""_Processing_Details.txt"
		cp -rf "/Users/${i}/Library/Accounts/"* ${computername}/${cname}-Triage/Users/${i}/Library/Accounts
		# Cookies files copy
		mkdir -p ${computername}/${cname}-Triage/Users/${i}/Library/Cookies
		echo -e "\nCommand Run: cp -rf /Users/${i}/Library/Cookies/* ${computername}/${cname}-Triage/Users/${i}/Library/Cookies" | tee -a "${computername}/${computername}""_Processing_Details.txt"
		cp -rf "/Users/${i}/Library/Cookies/"* ${computername}/${cname}-Triage/Users/${i}/Library/Cookies
		# Audio files copy
		mkdir -p ${computername}/${cname}-Triage/Users/${i}/Library/Audio
		echo -e "\nCommand Run: cp -rf /Users/${i}/Library/Audio/* ${computername}/${cname}-Triage/Users/${i}/Library/Audio" | tee -a "${computername}/${computername}""_Processing_Details.txt"
		cp -rf "/Users/${i}/Library/Audio/"* ${computername}/${cname}-Triage/Users/${i}/Library/Audio
		# Calendars files copy
		mkdir -p ${computername}/${cname}-Triage/Users/${i}/Library/Calendars
		echo -e "\nCommand Run: cp -rf /Users/${i}/Library/Calendars/* ${computername}/${cname}-Triage/Users/${i}/Library/Calendars" | tee -a "${computername}/${computername}""_Processing_Details.txt"
		cp -rf "/Users/${i}/Library/Calendars/"* ${computername}/${cname}-Triage/Users/${i}/Library/Calendars
		# Reminders files copy
		mkdir -p ${computername}/${cname}-Triage/Users/${i}/Library/Reminders
		echo -e "\nCommand Run: cp -rf /Users/${i}/Library/Reminders/* ${computername}/${cname}-Triage/Users/${i}/Library/Reminders" | tee -a "${computername}/${computername}""_Processing_Details.txt"
		cp -rf "/Users/${i}/Library/Reminders/"* ${computername}/${cname}-Triage/Users/${i}/Library/Reminders
		# Group Containers files copy
		mkdir -p ${computername}/${cname}-Triage/Users/${i}/Library/Group-Containers
		echo -e "\nCommand Run: cp -rf /Users/${i}/Library/Group Containers/* ${computername}/${cname}-Triage/Users/${i}/Library/Group-Containers" | tee -a "${computername}/${computername}""_Processing_Details.txt"
		cp -rf "/Users/${i}/Library/Group Containers/"* ${computername}/${cname}-Triage/Users/${i}/Library/Group-Containers
	else
		echo -e "** Directory /Users/${i}/Library/ does not exist ***" | tee -a "${computername}/${computername}""_Processing_Details.txt"
	fi
	#Library User Edit End
	
	
	#User Default Files Edit Start 
	if [ -d "/Users/${i}/Desktop" ]; then
		# create directories
        echo -e "\nCommand Run: mkdir -p ${computername}/${cname}-Triage/Users/${i}/Desktop" | tee -a "${computername}/${computername}""_Processing_Details.txt"
        mkdir -p ${computername}/${cname}-Triage/Users/${i}/Desktop
		mkdir -p ${computername}/${cname}-Triage/Users/${i}/Documents
		
		# Copying Desktop
		echo -e "\nCommand Run: cp -rf /Users/${i}/Desktop/* ${computername}/${cname}-Triage/Users/${i}/Desktop" | tee -a "${computername}/${computername}""_Processing_Details.txt"
		cp -rf "/Users/${i}/Desktop/"* ${computername}/${cname}-Triage/Users/${i}/Desktop
		# Copying Documents
		echo -e "\nCommand Run: cp -rf /Users/${i}/Documents/* ${computername}/${cname}-Triage/Users/${i}/Documents" | tee -a "${computername}/${computername}""_Processing_Details.txt"
		cp -rf "/Users/${i}/Documents/"* ${computername}/${cname}-Triage/Users/${i}/Documents
		# Copying .zsh_sessions
		if [ -d "/Users/${i}/.zsh_sessions" ]; then
			mkdir -p ${computername}/${cname}-Triage/Users/${i}/.zsh_sessions
			echo -e "\nCommand Run: cp -rf /Users/${i}/.zsh_sessions/* ${computername}/${cname}-Triage/Users/${i}/.zsh_sessions" | tee -a "${computername}/${computername}""_Processing_Details.txt"
			cp -rf "/Users/${i}/.zsh_sessions/"* ${computername}/${cname}-Triage/Users/${i}/.zsh_sessions
		else
			echo -e "** Directory /Users/${i}/.zsh_sessions does not exist ***" | tee -a "${computername}/${computername}_Processing_Details.txt"
		fi
		# Copying .bash_history
		if [ -f "/Users/${i}/.bash_history" ]; then
			echo -e "\nCommand Run: cp -rf /Users/${i}/.bash_history ${computername}/${cname}-Triage/Users/${i}/.bash_history" | tee -a "${computername}/${computername}""_Processing_Details.txt"
			cp -f "/Users/${i}/.bash_history" "${computername}/${cname}-Triage/Users/${i}/"
		else
			echo -e "** Directory /Users/${i}/.bash_history does not exist ***" | tee -a "${computername}/${computername}_Processing_Details.txt"
		fi
		# Copying .DS_Store
		if [ -f "/Users/${i}/.DS_Store" ]; then
			echo -e "\nCommand Run: cp -rf /Users/${i}/.DS_Store ${computername}/${cname}-Triage/Users/${i}/.DS_Store" | tee -a "${computername}/${computername}""_Processing_Details.txt"
			cp -f "/Users/${i}/.DS_Store" "${computername}/${cname}-Triage/Users/${i}/"
		else
			echo -e "** Directory /Users/${i}/.DS_Store does not exist ***" | tee -a "${computername}/${computername}_Processing_Details.txt"
		fi
		# Copying .zsh_history
		if [ -f "/Users/${i}/.zsh_history" ]; then
			echo -e "\nCommand Run: cp -rf /Users/${i}/.zsh_history ${computername}/${cname}-Triage/Users/${i}/.zsh_history" | tee -a "${computername}/${computername}""_Processing_Details.txt"
			cp -f "/Users/${i}/.zsh_history" "${computername}/${cname}-Triage/Users/${i}/"
		else
			echo -e "** Directory /Users/${i}/.zsh_history does not exist ***" | tee -a "${computername}/${computername}_Processing_Details.txt"
		fi
		# Copying .sh_history
		if [ -f "/Users/${i}/.sh_history" ]; then
			echo -e "\nCommand Run: cp -rf /Users/${i}/.sh_history ${computername}/${cname}-Triage/Users/${i}/.sh_history" | tee -a "${computername}/${computername}""_Processing_Details.txt"
			cp -f "/Users/${i}/.sh_history" "${computername}/${cname}-Triage/Users/${i}/"
		else
			echo -e "** Directory /Users/${i}/.sh_history does not exist ***" | tee -a "${computername}/${computername}_Processing_Details.txt"
		fi
	else
		echo -e "** Directory /Library/ does not exist ***" | tee -a "${computername}/${computername}""_Processing_Details.txt"
	fi
	
	# bash_sessions
	if [ -d "/Users/${i}/.bash_sessions" ]; then
		mkdir -p ${computername}/${cname}-Triage/Users/${i}/.bash_sessions
        #Copy .bash_sessions file(s) for each user
		echo -e "\nCommand Run: cp -rf /Users/${i}/.bash_sessions ${computername}/${cname}-Triage/Users/${i}" | tee -a "${computername}/${computername}""_Processing_Details.txt"
		cp -rf "/Users/${i}/.bash_sessions/"* ${computername}/${cname}-Triage/Users/${i}/.bash_sessions
	else
		echo -e "\n** Directory /Users/${i}/.bash_sessions does not exist ***" | tee -a "${computername}/${computername}""_Processing_Details.txt"
	fi
	#User Default Files Edit End
	

done

echo ""
echo -e "** Completed running ${targetname} target **\n" | tee -a "${computername}/${computername}""_Processing_Details.txt"
echo ""
return

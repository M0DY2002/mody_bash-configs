#!/usr/bin/bash

switch_full_line()
{
# a2d: active to deactivated
# d2a: deactivated to activated

# check arguments
        if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ] || ( [ "$3" != 'a2d' ] && [ "$3" != 'd2a' ] )
        then
                echo 'ARGUMENT(S) MISSING!!!'
                echo 'SYNTAX <text> <file> <mode> (a2d/d2a)'
                exit 1
        fi

# no check for file_name or mode !!!
# ..to-do...

# map parameters
        line_search="$1"
        line_temp="$1"
        line_replace="#$1"
        file_name="$2"
        status_text="de"

        if [ "$3" = 'd2a' ]
                then
                 #echo 'ungleich'
                        line_search="$line_replace"
                        line_replace="$line_temp"
                        status_text=""
         #else
                 #echo 'gleich'
        fi

# replace full_line (-w)

        if grep -x -q "$line_search" "$file_name"
        then
                sed -i 's\'"$line_search"'\'"$line_replace"'\g' "$file_name"
                echo 'Line is now '"$status_text"'activated...'
        else
                if grep -x -q "$line_replace" "$file_name"
                then
                        echo 'Line was already '"$status_text"'activated...'
                else
                        echo 'LINE NOT FOUND!!!'
                fi
        fi
}

# example
# call function
switch_full_line 'session    optional     pam_motd.so  motd=/run/motd.dynamic' './sshd' 'd2a'
switch_full_line 'session    optional     pam_motd.so noupdate' './sshd' 'a2d'

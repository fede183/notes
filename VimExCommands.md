# Vim EX Commands

## :g/{regex pattern}/d
Delete all lines that match the pattern

## :vimgrep/{regex pattern}/\*.txt
Search all the ocurrences of the pattern in the current directory in .txt files, it saves the result in the _quickfix_

## :cdo command
Runs the command in each entry in the _quickfix_

## :sort
sort the lines in the buffer or in a specified range of lines alphabetically

## :args \*.txt
Save a list of all the .txt files in the directory in the args buffer, can be used wuth :argdo

## :argdo command
Runs the command in each file in the args buffer

## :10,20d
Delete all lines from 10 to 20

## :10,20t30
Copy lines from 10 to 20 to the 30 line

## :g/foo/s/bar/baz/g
Search all lines that contain foo and replace bar with baz on these lines




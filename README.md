# unix-commands-for-data
## Basic commands

### First I need to get an understanding for the size of the file - use wc command
### wc
<b>wc -l <filename></b> counts the number of lines in a file <br>
<b>wc -w <filename></b> counts the number of words (delimited by any space chars) in a file <br>
<b>wc -b <filename></b> counts the number of bytes <br>
<b>wc -m <filename></b> counts the numebr of multibyte chars <br>
### Now I want to see the inside of the file may be the first few and last few lines - use head and tail commands
### head
Displays the contents of the file from the beginning. <br>
head -n <number of lines> <file name list>  - displays specified number of lines <br>
head -c <number of bytes> <file name list> - displays specified number of characters<br>
### tail
Displays the contents in the end of the file. <br>
tail -f read the end of the file continously. Very useful when you want to watch logs accumulating over time


### grep
### cut
### tr
### sort
### uniq

### split
### cat
### awk
### sed

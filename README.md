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
<b>head -n <number of lines> <file name list></b>  displays specified number of lines <br>
<b>head -c <number of bytes> <file name list></b>  displays specified number of characters<br>
### tail
Displays the contents in the end of the file. <br>
<b>tail -f</b> read the end of the file continously. Very useful when you want to watch logs accumulating over time.<br>
<b>tail -n</b> read the number of lines from the end of the file.<br>
<b>tail -b</b> read the number of bytes from the end of the file.<br>
<b>tail -r<b> display data in reverse order<br>
<b>fail -F<b> A more powerful version of -f where the file name changes, rotations and new file creation can also be watched.<br>
### grep
### cut
### tr
### sort
### uniq

### split
### cat
### awk
### sed

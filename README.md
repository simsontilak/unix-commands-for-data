# unix-commands-for-data
## Basic commands

### First I need to get an understanding for the size of the file - use wc command
### wc
<code style="color : #000000">wc -l <filename></code> counts the number of lines in a file <br>
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
<b>tail -r</b> display data in reverse order<br>
<b>fail -F</b> A more powerful version of -f where the file name changes, rotations and new file creation can also be watched.<br>
<b> tail -q</b> Supresses file name header when combining multiple files
### Now I know the file is too big and I want to break it dont into smaller pieces
### split
Splits a file into multiple chunks and names them based on the guidaance provided<br>
<b>split -d -l 500 -a 3 something.csv something-part-</b> Split the file with 500 lines each, use numeric suffix for each file, the numeric suffix should be of 3 digits, and the split file should start with the word "something-part-".<br>
<b>split -d -n 3 -a 3 something.csv something-part-</b> Same above about except, instead of using number of lines, split the files into 3 chunks (it will be two equal chunks and whaever is left out)

### I want to combine multiple files
### cat
### I am interested in only certain columns or fields 
### cut
### I want to find certain type of rows or do some row level filtering
### grep
### Do some sorting and deduplication
### sort
### uniq
### Do transformation (find and replace)
### tr
### awk
### sed

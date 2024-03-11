# Unix commands useful in data analysis
## First I need to get an understanding for the size of the file - use wc command
### wc
<b>wc -l <filename></b> counts the number of lines in a file <br>
<b>wc -w <filename></b> counts the number of words (delimited by any space chars) in a file <br>
<b>wc -b <filename></b> counts the number of bytes <br>
<b>wc -m <filename></b> counts the numebr of multibyte chars <br>
## Now I want to see the inside of the file may be the first few and last few lines - use head and tail commands
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
## Now I know the file is too big and I want to break it dont into smaller pieces
### split
Splits a file into multiple chunks and names them based on the guidaance provided<br>
<b>split -d -l 500 -a 3 something.csv something-part-</b> Split the file with 500 lines each, use numeric suffix for each file, the numeric suffix should be of 3 digits, and the split file should start with the word "something-part-".<br>
<b>split -d -n 3 -a 3 something.csv something-part-</b> Same above about except, instead of using number of lines, split the files into 3 chunks (it will be two equal chunks and whaever is left out)<br>
<b>split -b [K|k|M|m|G|g] ...</b> You can split files by various byte counts (kilo, mega, and giga) - same rules about files names can be specified<br>
<b>split -p <regular expression> ...</b> You can split by the existence of a regular expression pattern in a file<br>
## I want to combine multiple files
### cat
Combines multiple files into one file<br>
<b>cat file1.csv file2.csv</b> prints contents of both the files on after the other<br>
<b>cat -n file1.csv file2.csv</b> same as above but also prints line numbers<br>
<b>cat -b file1.csv file2.csv</b> same as above but does not print line numbers on blank lines<br>
<b>cat -v file1.csv file2.csv</b> prints non printable characters. Usedful if you want to look at a DOS file.<br>
<b>cat -s file1.csv file2.csv</b> removes blank lines
## I am interested in only certain columns or fields 
### cut
Exatracts specific fields from a delimited file.<br>
<b>cut -d=',' -s -f 1-3,5,7- file.csv</b> In a comma delimited file, extrace fields 1,2,3,5 and anything on or after 7th field. Remove lines that is not delimited.<br>
<b>cut -W -s -f 1-3,5,7- file.csv</b> Same as above with any space char as delimiter.<br>
<b>cut -b 1-3,5,7- file.csv</b> Same as above but look for byte position.<br>
<b>cut -c 1-3,5,7- file.csv</b> Same as above but look for character position (for multibyte strings)<br>
## I want to find certain type of rows or do some row level filtering
### grep
### Do some sorting and deduplication
### sort
### uniq
## I want to do transformation (find and replace)
### tr
### awk
### sed

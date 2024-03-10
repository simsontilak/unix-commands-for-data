tail -n +2 sales-tran.csv | split -l 268175 -d - sales-tran-
for file in sales-tran-*
do
    head -n 1 sales-tran.csv > tmp_file
    cat "$file" >> tmp_file
    mv -f tmp_file "$file".csv
    rm "$file"
done

cat /etc/passwd | grep -v '^#' | awk "NR%2==0 && NR>=2" | cut -d ":" -f 1 | rev | sort -r | awk "$FT_LINE1<=NR && $FT_LINE2>=NR"  | tr '\n' ',' | sed 's/,$/./' | sed 's/,/, /g' | tr -d '\n'

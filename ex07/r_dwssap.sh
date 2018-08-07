cat /etc/passwd | grep -v '^#' | tail -n +3 | cut -d : -f 1 | rev | sort -r | tr '\n' ',' | sed '$s/,$/./' | sed 's/,/, /g'


b="\033[1m"
n="\033[0m"

echo -e "${b}System Resource Usage${n}"

echo "-------------------------------------------------------"

echo -e "${b}Total CPU usage:${n}"
mpstat | grep "all" | awk -F " " '{print 100 -  $ 12 "%"}'

echo "-------------------------------------------------------"
echo -e "${b}Total memory usage:${n}"
free -m | grep '^Mem' | awk '{print "total = " $2"M\n" "used = " $3"M (" int($3/$2 * 100) "%)\n" "cached = " $6"M (" int($6/$2 * 100) "%)\n" "free = " $4"M (" int($4/$2 * 100) "%)"}'

echo "-------------------------------------------------------"
echo -e "${b}Total disk usage:${n}"
df -h | grep -w "/" | awk '{print "total = " $2 "\n" "used = " $3 " (" $5 ")\n" "free = " $4 " (" 100 - $5 "%)"}'

echo "-------------------------------------------------------"
echo -e "${b}Top 5 processes by CPU usage:${n}"
ps aux --sort=-%cpu | head -n 6 | awk '{print $3 "% - " $2 " - " $11}'

echo "-------------------------------------------------------"
echo -e "${b}Top 5 processes by memory usage:${n}"
ps aux --sort=-%mem | head -n 6 | awk '{print $4 "% - " $2 " - " $11}'
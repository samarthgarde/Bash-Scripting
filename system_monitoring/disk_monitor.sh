LIMIT=15
LOG_FILE="/home/sam/disk_monitor.log"
DATE=$(date +"%Y-%m-%d %H:%M:%S")

echo "[$DATE] Disk usage monitoring started" >> "$LOG_FILE"

df -h | grep -vE 'Filesystem|Size|Used|Avail|Use%|Mounted on' | while read -r line; do
	usage=$(echo "$line" | awk '{print $5}' | tr -d '%')
	if [ "$usage" -gt "$LIMIT" ]; then
	echo "ALERT: Disk Usage is $usage% full"
	fi
done

echo "[$DATE] Disk usage monitoring completed"	>> "$LOG_FILE"



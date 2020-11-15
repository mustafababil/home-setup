echo STARTING SYNC PROCESS
cd /d F:\rclone
rclone sync --progress --transfers=5 --rc --rc-user admin --rc-pass admin --rc-web-gui --exclude-from "F:/rclone/rclone-exclude.txt" F:\ onedrive:/External
PAUSE
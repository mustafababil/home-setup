#!/bin/bash
#
# author: Mustafa Babil (mustafababil@outlook.com)

rclone sync --progress --transfers=5 --rc --rc-user admin --rc-pass admin --rc-web-gui --exclude-from /Volumes/<DiskName>/rclone/exclude-list.txt /Volumes/<DiskName>/ onedrive:/External
# Rclone
Best Cloud sync program
[Website](https://rclone.org "Website")

## Windows
1. Open a new folder on your disk named `rclone`. Download this repo and *rclone* executable to there.
2. Run `rclone config` command to authorize rclone with your cloud storage provider.
3. Open *SYNC.bat* with a text editor.
4. Modify hard disk drive letter with your disk's. For example, **F** is the letter to replace.
5. Modify the name of cloud storage provider that you gave in step 2. For example, **onedrive** is the one to replace.
6. Edit the folder name in cloud to upload. For example, **External** is sample folder in main folder to make upload. If you prefer main path, just put **/**.
7. Save the file and close text editor.
8. Run *SYNC.bat* to start sync process.
9. Go to http://127.0.0.1:5572/ to follow visually enriched sync process.

## MacOS
1. Install rclone via *brew* or official website.
2. Run `rclone config` command to authorize rclone with your cloud storage provider.
3. Open *SYNC.sh* with a text editor.
4. Modify hard disk drive name with your disk's.
5. Modify the name of cloud storage provider that you gave in step 2. For example, **onedrive** is the one to replace.
6. Edit the folder name in cloud to upload. For example, **External** is sample folder in main folder to make upload. If you prefer main path, just put **/**.
7. Save the file and close text editor.
8. Open new Terminal session, go to rclone directory and run `./SYNC.sh` to start sync process.
9. Go to http://127.0.0.1:5572/ to follow visually enriched sync process.

## Notes
- Windows steps are tested on v1.53.2
- MacOS steps are tested on v1.53.1
- The files or folder that shouldn't be uploaded to cloud are defined in **exclude-list.txt**.
- Username and password is **admin** for GUI access in browser.


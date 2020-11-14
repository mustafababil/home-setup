
# Firefly III
Personal finance manager

[Github](https://github.com/firefly-iii/firefly-iii "Github")

## Setup
1. Run the command
```
docker-compose up -d
```
2. Go to http://localhost:8080

## Import CSV

1. Run the command
```
./csv-importer.sh
```
2. Go to http://localhost:8081
3. Select ING's *comma* separated CSV export file (old format)
4. Select *import_config_&lt;date&gt;* JSON file
5. Check mappings.
6. Start importing!

## Backup
No scheduled backups in place right now. Needs to be done manually.
```
./backup.sh
```
Creates a new backup under `backups/<date>` folder.

## Restore
Will be added later.

## Notes
1. The Id references in `import_configs` are unique running local instance.
2. No need to obfuscate _PAT_ in `csv-importer.sh` as the instance is local only.
3. No modification is necessary on `fireflyIII.env` file.
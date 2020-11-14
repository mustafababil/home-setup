#!/bin/bash
#
# author: Mustafa Babil (mustafababil@outlook.com)

echo "Starting backup process"

# activate debugging
# set -x

MAIN_DIR=$( cd "$(dirname "$0")" ; pwd -P )
BACKUPS_DIR=$MAIN_DIR/"backups"
TODAY=$(date +"%Y_%m_%d")
CURRENT_BACKUP_DIR=$BACKUPS_DIR/$TODAY

mkdir $CURRENT_BACKUP_DIR

cd $MAIN_DIR

# stop instance
docker-compose down

# start backing files up
# Volume Names:
# fireflyiii_firefly_iii_db
# fireflyiii_firefly_iii_export
# fireflyiii_firefly_iii_upload

docker run --rm -v "fireflyiii_firefly_iii_db:/tmp" -v "$CURRENT_BACKUP_DIR:/backups" \
  ubuntu tar -czvf /backups/firefly_db.tar /tmp

docker run --rm -v "fireflyiii_firefly_iii_export:/tmp" -v "$CURRENT_BACKUP_DIR:/backups" \
  ubuntu tar -czvf /backups/firefly_db_export.tar /tmp

docker run --rm -v "fireflyiii_firefly_iii_upload:/tmp" -v "$CURRENT_BACKUP_DIR:/backups" \
  ubuntu tar -czvf /backups/firefly_db_upload.tar /tmp

cp $MAIN_DIR/docker-compose.yml $CURRENT_BACKUP_DIR
cp $MAIN_DIR/fireflyIII.env $CURRENT_BACKUP_DIR

# Start container again
docker-compose up -d

echo "Finished backing up at $CURRENT_BACKUP_DIR"
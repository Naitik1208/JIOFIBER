# script is used to replace the `UPGRADE_PROGRAM` in `environment` table in `/tmp/system.db`
#
#
# SQL command to update the value for the UPGRADE_PROGRAM entry
sqlite3 "/tmp/system.db" <<EOF
UPDATE environment SET value = '/flash2/firmware.sh' WHERE name = 'UPGRADE_PROGRAM';
EOF

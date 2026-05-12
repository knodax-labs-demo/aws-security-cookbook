aws ec2 modify-snapshot-attribute \
  --snapshot-id <SNAPSHOT_ID> \
  --attribute createVolumePermission \
  --operation-type remove \
  --group-names all

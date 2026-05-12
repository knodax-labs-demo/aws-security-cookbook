for VOL in $VOLUME_IDS; do
  SNAPSHOT_ID=$(aws ec2 create-snapshot \
    --volume-id $VOL \
    --description "Forensic snapshot of volume $VOL from instance $INSTANCE_ID" \
    --tag-specifications "ResourceType=snapshot,Tags=[{Key=Purpose,Value=$SNAPSHOT_TAG},{Key=InstanceId,Value=$INSTANCE_ID},{Key=VolumeId,Value=$VOL}]" \
    --region $REGION \
    --query SnapshotId \
    --output text)

  echo "$VOL,$SNAPSHOT_ID" >> forensic-snapshots.csv
done

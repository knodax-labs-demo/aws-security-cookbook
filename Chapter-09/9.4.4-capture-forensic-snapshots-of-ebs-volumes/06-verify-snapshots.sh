aws ec2 describe-snapshots \
  --owner-ids self \
  --filters Name=tag:Purpose,Values=$SNAPSHOT_TAG \
  --region $REGION \
  --query 'Snapshots[*].[SnapshotId,VolumeId,State,StartTime,Description]' \
  --output table

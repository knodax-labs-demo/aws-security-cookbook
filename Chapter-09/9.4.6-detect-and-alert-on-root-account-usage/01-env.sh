cat <<EOF > env.sh
export REGION=us-east-1
export TRAIL_NAME=RootActivityTrail
export LOG_GROUP_NAME=/aws/cloudtrail/root-activity
export METRIC_NAME=RootAccountUsage
export METRIC_NAMESPACE=Security
export ALARM_NAME=RootAccountUsageAlarm
export TOPIC_NAME=RootAccountAlerts
export ROLE_NAME=CloudTrailCloudWatchLogsRole
export POLICY_NAME=CloudTrailCloudWatchLogsPolicy
EOF

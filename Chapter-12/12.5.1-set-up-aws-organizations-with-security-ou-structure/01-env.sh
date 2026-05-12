cat <<EOF > env.sh
export REGION=us-east-1
export SECURITY_OU_NAME=Security
export INFRA_OU_NAME=Infrastructure
export WORKLOADS_OU_NAME=Workloads
export LOG_ARCHIVE_EMAIL=security-log@example.com
export AUDIT_EMAIL=security-audit@example.com
export LOG_ARCHIVE_ACCOUNT_NAME=LogArchiveAccount
export AUDIT_ACCOUNT_NAME=AuditAccount
export SCP_NAME=DenyCloudTrailTampering
EOF

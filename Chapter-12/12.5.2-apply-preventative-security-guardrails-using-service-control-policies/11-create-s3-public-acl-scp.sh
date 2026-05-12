export SCP_S3_ID=$(aws organizations create-policy \
--name DenyS3PublicACLs \
--description "Prevent public S3 ACLs" \
--type SERVICE_CONTROL_POLICY \
--content file://deny-s3-public-acl.json \
--query 'Policy.PolicySummary.Id' \
--output text)

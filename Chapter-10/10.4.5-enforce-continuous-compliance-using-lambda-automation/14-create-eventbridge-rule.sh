aws events put-rule \
  --name "$RULE_NAME" \
  --event-pattern '{
    "source": ["aws.s3"],
    "detail-type": ["AWS API Call via CloudTrail"],
    "detail": {
      "eventName": ["CreateBucket", "PutBucketAcl", "PutBucketPolicy", "PutPublicAccessBlock"]
    }
  }' \
  --region "$REGION"

aws securityhub batch-enable-standards \
  --standards-subscription-requests "[
    {
      \"StandardsArn\":\"arn:aws:securityhub:$REGION::standards/cis-aws-foundations-benchmark/v/1.2.0\"
    }
  ]" \
  --region "$REGION"

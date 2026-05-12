aws codebuild batch-get-builds \
  --ids "$BUILD_ID" \
  --region "$REGION" \
  --query 'builds[0].buildStatus'

aws codebuild create-project \
  --name "$CODEBUILD_PROJECT_NAME" \
  --source type=NO_SOURCE,buildspec="$(cat buildspec.yml)" \
  --artifacts type=S3,location="$ARTIFACT_BUCKET",packaging=ZIP,name=secure-build-output.zip,encryptionDisabled=false \
  --environment type=LINUX_CONTAINER,image=aws/codebuild/standard:7.0,computeType=BUILD_GENERAL1_SMALL \
  --service-role "$CODEBUILD_ROLE_ARN" \
  --logs-config cloudWatchLogs="{status=ENABLED,groupName=$LOG_GROUP_NAME,streamName=build-log}" \
  --encryption-key "arn:aws:kms:$REGION:$ACCOUNT_ID:key/$KMS_KEY_ID" \
  --region "$REGION"

aws imagebuilder list-image-pipelines \
  --region "$REGION" \
  --query "imagePipelineList[?name=='$PIPELINE_NAME']"

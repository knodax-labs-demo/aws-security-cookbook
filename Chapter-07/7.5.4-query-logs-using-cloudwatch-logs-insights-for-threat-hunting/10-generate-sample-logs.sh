for i in {1..10}
do
  aws lambda invoke \
    --function-name $FUNCTION_NAME \
    response.json \
    --region $REGION > /dev/null
done

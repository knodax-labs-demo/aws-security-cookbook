aws events put-rule \
  --name $RULE_NAME \
  --event-pattern '{
    "source": ["aws.config"],
    "detail-type": ["Config Rules Compliance Change"],
    "detail": {
      "configRuleName": ["'$CONFIG_RULE_NAME'"],
      "newEvaluationResult": {
        "complianceType": ["NON_COMPLIANT"]
      }
    }
  }'

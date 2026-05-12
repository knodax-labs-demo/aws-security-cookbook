export INFRA_OU_ID=$(aws organizations create-organizational-unit \
  --parent-id "$ORG_ROOT_ID" \
  --name "$INFRA_OU_NAME" \
  --query 'OrganizationalUnit.Id' \
  --output text)

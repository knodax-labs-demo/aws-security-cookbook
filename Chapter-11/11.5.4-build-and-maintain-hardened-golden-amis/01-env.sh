cat <<EOF > env.sh
export REGION=us-east-1
export IMAGE_NAME=Hardened-Golden-AMI
export COMPONENT_NAME=HardenComponent
export RECIPE_NAME=GoldenAMIRecipe
export INFRA_NAME=GoldenAMIInfra
export PIPELINE_NAME=GoldenAMIPipeline
export ROLE_NAME=EC2ImageBuilderRole
export INSTANCE_PROFILE_NAME=EC2ImageBuilderInstanceProfile
EOF

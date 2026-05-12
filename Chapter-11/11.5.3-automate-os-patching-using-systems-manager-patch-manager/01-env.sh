cat <<EOF > env.sh
export REGION=us-east-1
export INSTANCE_ID=i-xxxxxxxxxxxxxxxxx
export PATCH_BASELINE_NAME=CustomPatchBaseline
export MAINTENANCE_WINDOW_NAME=PatchWindow
export INSTANCE_TAG_KEY=PatchGroup
export INSTANCE_TAG_VALUE=Production
export SERVICE_ROLE_NAME=PatchMaintenanceWindowRole
EOF

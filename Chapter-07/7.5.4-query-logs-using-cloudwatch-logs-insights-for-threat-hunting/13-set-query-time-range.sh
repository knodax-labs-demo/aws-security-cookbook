export START_TIME=$(python3 -c 'import time; print(int(time.time()) - 3600)')
export END_TIME=$(python3 -c 'import time; print(int(time.time()))')
export FUNCTION_NAME=threat-hunting-demo
export LOG_GROUP_NAME=/aws/lambda/$FUNCTION_NAME

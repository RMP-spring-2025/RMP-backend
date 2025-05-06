#!/bin/bash

echo "RMP-product-service..."
cd RMP-product-service
bash build.sh
PS_STATUS=$?
cd ..

echo "RMP-request-handler-service..."
cd RMP-request-handler-service
bash build.sh
RHS_STATUS=$?
cd ..

echo "RMP-user-service..."
cd RMP-user-service
bash build.sh
US_STATUS=$?
cd ..

echo ""
echo -n "RMP-product-service: "
[ $PS_STATUS -eq 0 ] && echo "OK" || echo "Failed (code: ${PS_STATUS})"
echo -n "RMP-request-handler-service: "
[ $RHS_STATUS -eq 0 ] && echo "OK" || echo "Failed (code: ${RHS_STATUS})"
echo -n "RMP-user-service: "
[ $US_STATUS -eq 0 ] && echo "OK" || echo "Failed (code: ${US_STATUS})"
[ $PS_STATUS -eq 0 ] && [ $RHS_STATUS -eq 0 ] && [ $US_STATUS -eq 0 ] && exit 0
exit 1

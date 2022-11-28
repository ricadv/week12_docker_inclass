#!/bin/bash

set -ex

sed -i "s|___NAME___|${STUDENT_NAME}|" /app/backend/student.txt
sed -i "s|___ID___|${STUDENT_ID}|" /app/backend/student.txt

exec python3 /app/backend/web.py -b 0.0.0.0:5000

curl -X POST ${API_URL}/eval
     -H 'Content-Type: application/json'
     -d '{"student_name": ${STUDENT_NAME}, "student_id": ${STUDENT_ID}}'

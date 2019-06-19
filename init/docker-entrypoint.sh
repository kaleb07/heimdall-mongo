#!/usr/bin/sh
echo 'Creating application user and db'
mongo --host ${MONGO_HOST} \
  --port ${MONGO_PORT} \
  -u ${MONGO_ROOT_USERNAME} \
  -p ${MONGO_ROOT_PASSWORD} \
  --authenticationDatabase ${MONGO_ROOT_DB} \
  --eval "db.getSiblingDB('${HM_MONGO_DB}').createUser({user: '${HM_MONGO_USER}', pwd: '${HM_MONGO_PASS}', roles:[{role:'dbOwner', db: '${HM_MONGO_DB}'}]});"

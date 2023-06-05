#!/bin/sh
set -x


ADMIN_ID=$1
PASSWORD=$2
APPSVR_ID=$3
POLICYSVR=$4
CFG_FILE=$5
KEY_FILE=$6

java com.tivoli.pd.jcfg.SvrSslCfg -action unconfig -admin_id "${ADMIN_ID}" -admin_pwd "${PASSWORD}"		\
								  -appsvr_id "${APPSVR_ID}" -policysvr "${POLICYSVR}" -cfg_file "${CFG_FILE}"

exit $?

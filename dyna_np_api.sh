#!/bin/sh

# For debugging
set -xv

# Some vars
P_DYN=https://tgo745.dynatrace-managed.com/e/7571065c-f052-471e-a3d7-f99d529548bb
NP_DYN=https://tgo745.dynatrace-managed.com/e/18c43959-ee08-4ded-aac6-25331f9fa76e
P_TOK=Jm7Plp67Qa-jouC1s9YPN
NP_TOK=4fkDCDp_T7-kxpa_wrzZy
HOST=u060ctma11a
FILE=dyn_np_host_info.json

#curl -L -H "Authorization: Api-Token $P_TOK" $DYN/api/v1/entity/infrastructure/hosts/$HOST

#curl -X GET $DYN/api/v1/entity/infrastructure/hosts -H 'Authorization: Api-Token Jm7Plp67Qa-jouC1s9YPN'

curl -X GET $NP_DYN/api/v1/entity/infrastructure/hosts?includeDetails=false -H 'Authorization: Api-Token 4fkDCDp_T7-kxpa_wrzZy' > $FILE

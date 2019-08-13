#!/bin/sh

# For debugging
set -xv

# Some vars
DYN=https://tgo745.dynatrace-managed.com/e/7571065c-f052-471e-a3d7-f99d529548bb
P_TOK=Jm7Plp67Qa-jouC1s9YPN
NP_TOK=4fkDCDp_T7-kxpa_wrzZy
HOST=u060ctma11a

#curl -L -H "Authorization: Api-Token $P_TOK" $DYN/api/v1/entity/infrastructure/hosts/$HOST

curl -X GET $DYN/api/v1/entity/infrastructure/hosts -H 'Authorization: Api-Token Jm7Plp67Qa-jouC1s9YPN'

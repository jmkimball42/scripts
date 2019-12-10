#!/bin/sh

# For debugging
set -xv

# Some vars
DYN=
P_TOK=
NP_TOK=
HOST=u060ctma11a

#curl -L -H "Authorization: Api-Token $P_TOK" $DYN/api/v1/entity/infrastructure/hosts/$HOST

curl -X GET $DYN/api/v1/entity/infrastructure/hosts -H 'Authorization: Api-Token 

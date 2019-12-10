#!/bin/sh

# For debugging
set -xv

# Some vars
P_DYN=
NP_DYN=
P_TOK=
NP_TOK=
HOST=u060
FILE=dyn_np_host_info.json


curl -X GET $NP_DYN/api/v1/entity/infrastructure/hosts?includeDetails=false -H 'Authorization: Api-Token xx' > $FILE

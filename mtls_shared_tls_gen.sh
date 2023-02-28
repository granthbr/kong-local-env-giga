#!/usr/bin/env bash

TARGET_DIR=${1:-./certs}
CA_CN="kong"
CN="kong_clustering"
O="kongeng"
L="Reading"
S="Berkshire"
C="UK"

CA_SUBJ="/CN=${CA_CN}"
CLIENT_SUBJ="/CN=${CN}"

CA_CRT="${TARGET_DIR}/ca.crt"
CA_SRL="${TARGET_DIR}/ca.srl"
CA_KEY="${TARGET_DIR}/ca.key"
CLIENT_CSR="${TARGET_DIR}/cluster.csr"
CLIENT_CRT="${TARGET_DIR}/tls.crt"
CLIENT_KEY="${TARGET_DIR}/tls.key"

if [[ ! -d ${TARGET_DIR} ]]; then
  mkdir -p ${TARGET_DIR}
fi

if [[ ! -f ${CA_KEY} ]]; then
  openssl genrsa -out ${CA_KEY} 2048
fi

if [[ ! -f ${CA_CRT} ]]; then
  openssl req -new -x509 -key ${CA_KEY} -sha256 -out ${CA_CRT} -subj "${CA_SUBJ}"
fi

if [[ ! -f ${CLIENT_KEY} ]]; then
  openssl genrsa -out ${CLIENT_KEY} 2048
  openssl req -new -key ${CLIENT_KEY} -out ${CLIENT_CSR} -subj "${CLIENT_SUBJ}"
  openssl x509 -days 1095 -req -in ${CLIENT_CSR} -CA ${CA_CRT} -CAkey ${CA_KEY} -CAcreateserial -out ${CLIENT_CRT} -sha256
  mv .srl ${CA_SRL}
fi

openssl pkcs12 -in aps_development.p12 -out aps_development.pem -nodes
openssl x509 -in aps_development.pem -noout -dates
openssl pkcs12 -in aps.p12 -out aps.pem -nodes
openssl x509 -in aps.pem -noout -dates
#!/bin/sh
rm -f tailon
env CGO_ENABLED=0 GOOS=linux GOARCH=amd64 make
tar zcvf tailon_linux_amd64.tar.gz tailon LICENSE README.md frontend/dist frontend/templates
hub release create -a tailon_linux_amd64.tar.gz v1.0.0
# hub release edit -a tailon_linux_amd64.tar.gz v1.0.0


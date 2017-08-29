BASE_DIR=`dirname $_`

alias zcashd-build="(cd ${BASE_DIR} && \
                     docker build -t zcash:latest . && \
                     docker run --rm -it \
                        -v ${BASE_DIR}/zcash:/root/.zcash \
                        -v ${BASE_DIR}/zcash-params/:/root/.zcash-params \
                        --entrypoint /bin/bash \
                        zcash zcash-fetch-params)"
alias zcashd-cleanup="zcash-cli stop && sleep 5 && docker rm -f zcash"
alias zcashd-logs="docker logs -f zcash"
alias zcashd="(cd ${BASE_DIR} && \
               docker run -d --name zcash -it \
                  -v ${BASE_DIR}/zcash:/root/.zcash \
                  -v ${BASE_DIR}/zcash-params/:/root/.zcash-params \
                  -v ${BASE_DIR}/exchange/:/exchange \
                  -p 8232:8232 \
                  zcash)"

alias zcash-cli="docker exec -it zcash zcash-cli"

# Put your z-address here, if you like
# export ZADDR=""

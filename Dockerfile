FROM debian:jessie

RUN apt-get update -y && \
    apt-get install -y \
      apt-transport-https \
      wget && \
    wget -qO - https://apt.z.cash/zcash.asc | apt-key add - && \
    echo "deb [arch=amd64] https://apt.z.cash/ jessie main" | tee /etc/apt/sources.list.d/zcash.list && \
    apt-get update -y && \
    apt-get install -y \
      zcash && \
    rm -rf /var/lib/apt/lists/*

VOLUME ["/root/.zcash-params/", "/root/.zcash/"]

CMD ["zcashd"]

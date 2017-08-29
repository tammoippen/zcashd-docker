# Simple `Dockerfile` for building and using `zcashd` and `zcash-cli`

Source `zcash.env.sh` and you get some neat commands for starting, stopping and inspecting
the `zcashd` without interacting with `docker` at all (put it into your `.bashrc`, or similar):

```sh
# get the Dockerfile and the env-file
git clone git@github.com:tammoippen/zcashd-docker.git

# source the env-file:
source zcash.env.sh

# Build and initialize the deamon:
zcashd-build

# to start the deamon
zcashd

# to see the logs:
zcashd-logs

# to interact with the deamon use `zcash-cli`
zcash-cli

# finally, to stop the deamon:
zcashd-cleanup
```

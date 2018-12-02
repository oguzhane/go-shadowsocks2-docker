# go-shadowsocks2-docker
This Dockerfile builds an image for [go-shadowsocks2](https://github.com/shadowsocks/go-shadowsocks2) based on golang alpine linux image.

## Quick Start
It uses ENTRYPOINT to run a container as the executable.
```
docker run -d --restart always -e SS_METHOD=AEAD_CHACHA20_POLY1305 -e SS_PASSWORD=$PASSWD -e SS_PORT=8388 -p 8388:8388 oguzhane/go-shadowsocks2-docker:latest
```
You can configure it to run with SS_METHOD, SS_PASSWORD and SS_PORT parameters. Just make sure that the port number given to Docker should be the same as the one given to shadowsocks.

For more information, refer to the [go-shadowsocks2 documantation](https://github.com/shadowsocks/go-shadowsocks2)

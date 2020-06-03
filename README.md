# mysql-workbench
Docker image for mysql-workbench

## usage
create a container by docker-compose.yml
```
version: '3.7'

services:
  ide:
    image: panwenbin/mysql-workbench
    network_mode: host
    volumes:
      - /tmp/.X11-unix
      - $HOME/.mysql-workbench:/root/.mysql/workbench
      - /usr/share/fonts:/usr/share/fonts:ro
    environment:
      - DISPLAY=unix$DISPLAY
      - TZ=Asia/Shanghai
```

run `xhost +` on the host, then run `docker-compose up -d` to start the container

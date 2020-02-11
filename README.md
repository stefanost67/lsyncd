# lsyncd
A docker that can asynchronously replicate a local area to a remote server  

Run it inside a docker-compose file

```
...
  lsyncd:
    image: stefanost67/lsyncd
    container_name: lsyncd
    volumes:
      - ${PWD}/app/wp-content:/data
      - ${PWD}/lsyncd/ssh:/root/.ssh 
      - ${PWD}/lsyncd/conf/lsyncd.conf.lua:/etc/lsyncd/lsyncd.conf.lua
    restart: unless-stopped
...

```

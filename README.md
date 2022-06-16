# Virtual environment to study attack techniques
Create the environment by using docker containers to study attack techniques.

![](https://github.com/tcbn-ai/Docker_security_study/blob/fig/fig/configuration_docker.svg?raw=true)

The above network configuration is realized by using docker containers.

![](https://github.com/tcbn-ai/Docker_security_study/blob/fig/fig/docker_env.svg?raw=true)



## Prerequisites
1. Install Docker Engine and Docker Compose.
    - We create shell script to install these in Ubuntu (`install_docker.sh`).
1. Create docker networks by using following commands.
    - `docker network create attack-net-global`
    - `docker network create --internal attack-net-internal`

## Usage
To build and run, execute following commands.
```
docker-compose build
docker-compose up
```

To use kali linux, execute the following command.
```
docker-compose exec kali bash
```

To use metasploitable, execute the following command.
```
docker-compose exec metasploitable bash
```

## Remark
- Current directory (the same hierarchy as `docker-compose.yml`) is mounted on `/root/workspace` in the kali container (See `docker-compose.yml`).
- GUI tools (e.g. Wireshark) cannot be used in this environment.
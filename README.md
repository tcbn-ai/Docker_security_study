# Virtual environment to study attack techniques
Create environment by using docker containers to study attack techniques.



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
GUI tools (e.g. Wireshark) cannot be used in this environment.
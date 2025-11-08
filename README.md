# hamlib-docker
Simple docker container to run rigctld automatically on port 45230

## Run
Edit the [docker-compose.yaml](https://github.com/hamMUSings/hamlib-docker/blob/main/docker-compose.yaml) file with the 
- [Model Number of radio from hamlib](https://github.com/Hamlib/Hamlib/wiki/Supported-Radios)
- Baud rate of the radio
- Serial device port
  - Replace /dev/ttyUSB1 with the serial port connected to the radio

> [!WARNING]
> Make sure to leave the :/dev/ttyUSB0 part of the line!     /path/to/your/derial/device:/dev/ttyUSB0 

### Launch
```
docker compose up -d 
```

# Usage
Once running it will allow you to use another application that can connect to Hamlib Net Rig radio using the ip/hostname and the port 45320

# Docker
Pre-Built docker container can be found [here](https://hub.docker.com/r/hammusings/hamlib-server)

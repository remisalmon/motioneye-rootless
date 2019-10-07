# Rootless motionEye

Scripts to install and run [motioneye](https://github.com/ccrisan/motioneye) without root privileges (locally or in Docker)

## Local install

### Installing motioneye

Install motioneye dependencies (`motion ffmpeg v4l-utils`, see https://github.com/ccrisan/motioneye/wiki/Installation)

Run `install_motioneye.sh` (installs motioneye to a Python2 virtual environment in `$(pwd)/venv27`)

### Running motioneye

Run `start_motioneye.sh`

All log, config and media files are saved in `$(pwd)/motioneye`

## Docker install

### Installing motioneye

Run `install_motioneye_docker.sh`

### Running motioneye

Run `start_motioneye_docker.sh`

All log, config and media files are saved in `$(pwd)/motioneye`

To change/add a camera, edit/add the `--device ...` field in `start_motioneye_docker.sh` (ex: `--device /dev/video0:/dev/video0`)

To circumvent SELinux, switch the `docker run ...` command in `start_motioneye_docker.sh` (or write your own SELinux policy...)

## NOTES

To run Docker rootless, check out https://podman.io/

Tested on Fedora 30 with Podman 1.6.1

# motionEye (rootless)

Scripts to install and run [motioneye](https://github.com/ccrisan/motioneye) without root privileges (locally or in Docker)

## Local install

### Installing motioneye

Install the motioneye dependencies `motion ffmpeg v4l-utils python2-pip libcurl libjpeg`  
(see https://github.com/ccrisan/motioneye/wiki/Manual-Download-And-Installation)

Run `install_motioneye.sh`

motioneye will install in a Python2 virtual environment in `venv27/`

### Running motioneye

Run `start_motioneye.sh`

All log, config and media files are saved in `motioneye/`

## Docker install

### Installing motioneye

Run `install_motioneye_docker.sh`

motioneye will install to a `localhost/motioneye:latest` Docker image (399 MB)

### Running motioneye

Run `start_motioneye_docker.sh`

All log, config and media files are saved in `motioneye/`

In `start_motioneye_docker.sh`:
* To change/add a camera, edit/add the `--device ...` field  (ex: `--device /dev/video0:/dev/video0`)
* To circumvent SELinux, add `--security-opt label=disable` to the `docker run ...` command (or write your own SELinux policy...)

## NOTES

To run Docker rootless, check out [podman.io](https://podman.io/) (`alias docker=podman`)

Tested on Fedora 30 with Podman 1.6.1

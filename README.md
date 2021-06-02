# deepstream-test1-cam
Modified NVIDIA's deepstream-test1 sample for camera input

## Usage

### Build a container
~~~
$ git clone https://github.com/MACNICA-CLAVIS-NV/deepstream-test1-cam
$ cd deepstream-test1-cam
$ chmod +x *.sh
$ ./docker_build.sh
~~~

### Run the application
**You need to have a USB camera on /dev/video0 on your host L4T OS.**
~~~
$ ./docker_run.sh
~~~

## Note
This release supports only for JetPack 4.5.1.
If you want to run this for other versions of JetPack, modify the following line in Dockerfile.
~~~
ARG BASE_IMAGE=nvcr.io/nvidia/deepstream-l4t:5.1-21.02-samples
~~~

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
*** You need to have a USB camera on /dev/video0 on your host L4T OS.
~~~
$ ./docker_run.sh
~~~

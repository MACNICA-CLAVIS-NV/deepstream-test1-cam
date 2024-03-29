# deepstream-test1-cam
Modified NVIDIA's deepstream-test1 sample for camera input

## Usage

### Jetson initial setup
~~~
sudo apt update
~~~
~~~
sudo apt install nvidia-jetpack
~~~

### Build a container
~~~
git clone https://github.com/MACNICA-CLAVIS-NV/deepstream-test1-cam
~~~
~~~
cd deepstream-test1-cam
~~~
~~~
chmod +x *.sh
~~~
~~~
./docker_build.sh
~~~

### Run the application
**You need to have a USB camera at /dev/video0 on your host L4T OS.**
~~~
./docker_run.sh
~~~

## Note
**This release supports only for JetPack 4.5.1.**  
If you want to run this on other versions of JetPack, modify the following line in Dockerfile to select the base image which support your version. Refer to [the DeepStream-l4t repository page in NVIDIA NGC](https://ngc.nvidia.com/catalog/containers/nvidia:deepstream-l4t/tags) to find the right base image.
~~~
ARG BASE_IMAGE=nvcr.io/nvidia/deepstream-l4t:5.1-21.02-samples
~~~

In DeepStream 6.x, the Nvtracker specification has changed, so change "tracker_config.txt" as follows
~~~
～
#ll-lib-file=/opt/nvidia/deepstream/deepstream/lib/libnvds_nvdcf.so
ll-lib-file=/opt/nvidia/deepstream/deepstream/lib/libnvds_nvmultiobjecttracker.so
~~~

If an error occurs when running docker_run.sh, execute the following command.
~~~~
sudo pkill -SIGHUP dockerd
~~~~

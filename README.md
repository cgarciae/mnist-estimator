# MNIST Estimator
This tutorial requires either docker + docker-compose installed or an environment with python + tensorflow installed:

## Docker Compose
Just run the following command (might take a while)
```
docker-compose up
```
Open the link given by Jupyter in the console and run the `mnist-allcnn` notebook.

## Your Own Env
Run
```
pip install -r requirements.txt
jupyter notebook --allow-root --NotebookApp.iopub_data_rate_limit=1.0e10 .
```
Open the link given by Jupyter in the console and run the `mnist-allcnn` notebook. This setup is not fully tested as it assumes you have a proper tensorflow + jupyter installation.


## Advanced Stuff

This example can be a little bit faster if you use a GPU for training. To enable docker to have access to your GPU, you can set up [nvidia-docker](https://github.com/NVIDIA/nvidia-docker).

# Configuration
Once you have nvidia docker already installled on your machine, please make sure that
the default runtime engine is nvidia, that is, make sure that you edit **(root privileges need)** the file /etc/docker/daemon.json and add the first level key:

```
"default-runtime":"nvidia"
```
Reboot (or restart the docker daemon) and you should be able to run code on you GPU.

Happy deep learning!

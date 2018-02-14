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

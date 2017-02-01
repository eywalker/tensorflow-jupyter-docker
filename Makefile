.PHONY: clean build

build:
	sudo docker build --pull -f Dockerfile.v0.12.0rc0 -t eywalker/tensorflow-jupyter:v0.12.0rc0-cuda8.0-cudnn5 .
	sudo docker build --pull -f Dockerfile.v0.11.0 -t eywalker/tensorflow-jupyter:v0.11.0-cuda8.0-cudnn5 .
	sudo docker build --pull -f Dockerfile.v0.11.0rc0 -t eywalker/tensorflow-jupyter:v0.11.0rc0-cuda8.0-cudnn5 .
	sudo docker build --pull -f Dockerfile.v0.10.0 -t eywalker/tensorflow-jupyter:v0.10.0-cuda8.0-cudnn5 .
	sudo docker build --pull -f Dockerfile.cuda -t eywalker/tensorflow-jupyter:cuda .
	sudo docker build --pull -t eywalker/tensorflow-jupyter:v0.11.0rc0 .
	sudo docker tag eywalker/tensorflow-jupyter:v0.11.0rc0 eywalker/tensorflow-jupyter

push:
	sudo docker push eywalker/tensorflow-jupyter

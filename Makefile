.PHONY: clean build

build:
	sudo docker build -f Dockerfile.v0.11.0rc0 -t eywalker/tensorflow-jupyter:v0.11.0rc0-cuda8.0-cudnn5 .
	sudo docker build -f Dockerfile.v0.10.0 -t eywalker/tensorflow-jupyter:v0.10.0-cuda8.0-cudnn5 .
	sudo docker build -f Dockerfile.cuda -t eywalker/tensorflow-jupyter:cuda .
	sudo docker build -t eywalker/tensorflow-jupyter:v0.11.0rc0 .
	sudo docker tag eywalker/tensorflow-jupyter:v0.11.0rc0 eywalker/tensorflow-jupyter

push: build
	sudo docker push eywalker/tensorflow-jupyter:v0.11.0rc0-cuda8.0-cudnn5
	sudo docker push eywalker/tensorflow-jupyter:v0.10.0-cuda8.0-cudnn5
	sudo docker push eywalker/tensorflow-jupyter:cuda
	sudo docker push eywalker/tensorflow-jupyter:v0.11.0rc0
	sudo docker push eywalker/tensorflow-jupyter

.PHONY: clean build



build:
	sudo docker build --pull -f Dockerfile.v0.12.1 -t eywalker/tensorflow-jupyter:v0.12.1 .
	sudo docker build --pull -f Dockerfile.cuda.v0.12.1 -t eywalker/tensorflow-jupyter:v0.12.1-cuda8.0-cudnn5 .
	sudo docker build --pull -f Dockerfile.v1.0.0rc0 -t eywalker/tensorflow-jupyter:v1.0.0rc0 .
	sudo docker build --pull -f Dockerfile.cuda.v1.0.0rc0 -t eywalker/tensorflow-jupyter:v1.0.0rc0-cuda8.0-cudnn5 .
	sudo docker build --pull -f Dockerfile -t eywalker/tensorflow-jupyter:latest .
	sudo docker build --pull -f Dockerfile.cuda -t eywalker/tensorflow-jupyter:cuda .

push:
	sudo docker push eywalker/tensorflow-jupyter:v0.12.1
	sudo docker push eywalker/tensorflow-jupyter:v0.12.1-cuda8.0-cudnn5
	sudo docker push eywalker/tensorflow-jupyter:v1.0.0rc0
	sudo docker push eywalker/tensorflow-jupyter:v1.0.0rc0-cuda8.0-cudnn5
	sudo docker push eywalker/tensorflow-jupyter:latest
	sudo docker push eywalker/tensorflow-jupyter:cuda

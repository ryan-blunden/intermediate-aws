build:
	docker image pull python:3.7-slim-stretch
	cd awscli && "$(MAKE)" build

	docker image pull hashicorp/terraform:light

	docker image pull amazonlinux:latest
	cd lambda/chalice && "$(MAKE)" build

	docker image pull openjdk:11-jre-slim
	cd dynamodb && "$(MAKE)" build

	docker image pull minio/minio:latest

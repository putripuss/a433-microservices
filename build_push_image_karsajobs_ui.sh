#!/bin/bash

# Perintah untuk build Docker image
docker build -t puttriipus/karsajobs-ui:latest .

# Perintah untuk login ke Docker Hub
docker login 

# Perintah untuk push image ke Docker Hub
docker push puttriipus/karsajobs-ui:latest

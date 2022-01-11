# Goal

This repo was created to share my orthanc container configuration. The problem is this container stuck on "AWSPluginS3 finalizing step". Versions used to build:
* orthanc: `1.9.3`
* orthanc-s3-plugin: `1.3.3`
* orthanc-container: `osimis/orthanc:21.12.0-buster`

## Build process
- first build the container: `docker build -t orthanc-s3:0.0.4-aws -f build-aws-plugin.docker .`
- second create a custom network to enable DNS in docker
- run the services:
  - minio: `run-01-minio.sh`
  - postgres: `run-02-pg.sh`
  - orthanc: `run-03-orthanc.sh`
- create a bucket in minio

## Reproducing the bug
- run the services as it described in Build
- try to upload something to S3 (it is not important if upload was successfull)
- stop the container

Container should stuck in "finalizin AWSS3StorgaPlugin". It should stay in this state forever but can be safely killed from this state.

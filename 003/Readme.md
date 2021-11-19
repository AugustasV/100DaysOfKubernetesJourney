# DevSpace local deployment

## Introduction
Before I made simple helm chart to deploy image from docker hub with latest tag. Right now want to make local deployment easier.

## Use Case
To make things more complicated, I host my cluster in private network. My key point at this stage is to build and deploy my branch of choice by writing one command
```
devspace deploy --var BRANCH=test_branch_name
```
## Research
It's possible to do it with DevSpace, even probably in the future to [make it CI/CD](https://devspace.sh/cli/docs/guides/ci-cd-integration) because of availability to run it inside docker image.

## Try yourself
It's possible to specify git repo by using [Git-based Dependencies](https://devspace.sh/cli/docs/configuration/dependencies/git-repository)
In that case it will download specific branch, build and deploy into cluster. Just what I need.

But I didn't made it to work properly today
```
➜  test devspace deploy  
[info]   Using namespace 'op'
[info]   Using kube context 'default'
[info]   Start resolving dependencies
[done] √ Pulled 0f49887a0372e8b5b24d36ed836b57cf3930bb88e955d1a4f94c34b977a86601
[fatal]  deploy dependencies: resolve dependencies: loading config for dependency nettracer-bpf: Couldn't load '/home/ubuntu/.devspace/dependencies/8a0d1ed458839c6814452705093e8f5f1aa53ed99dd48f24c8b0eb6c9e93ada0/devspace.yaml': stat /home/ubuntu/.devspace/dependencies/8a0d1ed458839c6814452705093e8f5f1aa53ed99dd48f24c8b0eb6c9e93ada0/devspace.yaml: no such file or directory
```
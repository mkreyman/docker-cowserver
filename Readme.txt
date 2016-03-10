# Based on "Automate your Development Workflow with Docker" tutorial:
# https://blog.codeship.com/automate-your-dev-workflow-with-docker/

$ cd ~/workspace/Docker/
$ mkdir cowserver && cd cowserver
$ subl Gemfile
$ subl app.rb
$ subl Dockerfile
$ subl .ruby-version
$ docker-machine start default
$ eval $(docker-machine env default)
$ docker images
$ docker build -t mkreyman/cowserver .
$ docker images
$ docker run -p 8000:8000 mkreyman/cowserver
$ docker-machine ls
$ docker run -p 8000:8000 mkreyman/cowserver  # OR
$ docker run  -p 8000:8000 --name cowserver -d mkreyman/cowserver
$ docker ps -a
$ curl http://192.168.99.100:8000/
$ docker stop cowserver

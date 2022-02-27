- docker build -it my-ruby-image .
    -t  = File name tag
    . = Docker file location / assumes in the current folder
    -i = to be interactive

- docker run -it my-ruby-image bash
  bash = override last command

- exit = to stop docker container

- docker ps  = display what containers i am running currently

- docker images = local docker registry images

- docker exec -it <container> <command>
  - exec a command inside a container that is already running

- 

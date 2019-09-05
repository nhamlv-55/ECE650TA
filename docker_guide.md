## What is Docker?
The easiest way of thinking about Docker is to think about it as a lightweight virtual machine 
(in case of running Docker on Windows or MacOS, it is actually the correct way of thinking). Docker gives you a separated running environment you can mess around with without ruining your OS.
## How to install Docker?
### Linux (Ubuntu based)
You can read the full guide [here] (https://docs.docker.com/install/linux/docker-ce/ubuntu/)

I highly recommend you to follow the `Install using the repository` instruction.

After installation, remember to do [this](https://docs.docker.com/install/linux/linux-postinstall/)
### MacOS
Follow [this](https://docs.docker.com/docker-for-mac/install/)
### Windows
Follow [this](https://docs.docker.com/docker-for-windows/install/)

Please make sure that you read the `System requirements` carefully.
## How to use Docker?
For this part, I assume that on my local machine, my work directory is 
`
/home/levn/workspace/ece650/
`
### Get the image for the course

`docker pull levn/ece650base`

### Create a container (think about it as a virtual machine) using the downloaded image

`docker run -dit -v /home/levn/workspace/ece650/:/home/ece650/ --name ECE650 levn/ece650base`
Explanation:
* `docker run` is the command to create a container
* `-dit` is to `detach` the screen
* `-v` is to map a folder on your machine with a folder inside the container (virtual machine). This is crucial because we want to edit files in our machine using our fancy IDE, and run the exact same files inside the container.
* `-name` is to name the container so that we can access it later easily

### Verify that the container (virtual machine) is created

`docker ps`

You should see somethings like

```
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
1d76bdabed24        levn/ece650base     "/bin/bash"         8 minutes ago       Up 7 minutes                            ece650
l
```
### Use the container
Run
`
docker exec -it ECE650 /bin/bash
`
You will see your prompt turn into something like `root@bce6b727fb8e`, indicating that you are now inside the container as `root`.
Now you can go to the work directory
`
cd /home/ece650
`


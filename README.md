# ipfsDocker
This is a Docker project which runs IPFS node in a container.
It contains a main golang image from Dockerhub acting as a base image. 
You can consider working on the ipfs by entering the container only and running the ipfs daemon.
If you wish not to connect to other nodes, you can delete the links from the "Bootstrap" section from the "/root/.ipfs/config"

Steps to use this repository is as follows:

1. Clone the repository:

```
git clone https://github.com/subhasisbanik/ipfsDocker.git
```

2. Change the current working directory:

```
cd ipfsDocker
```

3. Build the Docker image:

```
docker build -t ipfsdocker .
```

4. Run the contaner:

```
docker run -d -i ipfsdocker
```

5. Check if the container is running:

```
docker ps -a
```

6. Enter the container to run the daemon:

```
docker exec -it <container-id> bash
```
7. Change the config file if Bootstrapping with other public nodes i not desired:

```
vi /root/.ipfs/config
```

8. Run IPFS daemon:

```
ipfs daemon
```
Post this your daemon is ready to accept and deliver your content.
For instance, if you wish to add a file to ipfs,

```
ipfs add <filename>
```
And if you wish to retrieve the content from the generated hash,

```
ipfs cat <filehash>
```

For elaborate commands on IPFS, please refer to,

```
https://ipfs.io/docs/commands/
```

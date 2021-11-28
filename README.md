
Scyther tool with Docker and Quartz
===========================

**This is a useful way to integrate Scyther with Docker and XQuartz.** 

I take no responsibility for the creation of the Scyther tool, I just share a simple docker-file and bash script that makes the installation and running much easier. 

Original Scyther repo:
https://github.com/cascremers/scyther


## How to Run


- **Make sure you have XQuartz installed**
 - Build an image with the following command:
   `docker build -t scyther:latest .`
   
- Run the bash script with the following command:
`bash ./scyther-docker.sh`

- A bind mount was created with the folder `scyther-files` so any file placed in that folder is immediately accessible by the docker container
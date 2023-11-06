### Flask Api to call the Ansible Playbook in Docker Container

>**To Build Image:**

- _docker build -t flaskapi:latest ._

>**To Run the app:**

- _docker run -d -p 8090:8090 flaskapi:latest_ 

>**To Change the Port Number**

`Update in Dockerfile`

- _flask run --host 0.0.0.0 --port 8090_

>**Save the Image**

- _docker save -o ./fask-ansible-docker.tar flaskapi:latest_

>**Load Docker Image** 

- _docker load < fask-ansible-docker.tar_

>**Stop Docker Container** 

- _docker stop <<CONTAINER_ID>>_

>**Start Docker Container** 

- _docker start <<CONTAINER_ID>>_

>**To Find the process of Port**

_lsof -P -i :8090_

>**References**

- https://hackmd.io/@the-ansible-book/B1y5tXers

- https://medium.com/@prateekbansalind/python-programs-4-dockerizing-your-flask-api-for-seamless-deployments-28c1842a92cb

- https://sddcadvisors.com/running-ansible-playbook-from-python-code/


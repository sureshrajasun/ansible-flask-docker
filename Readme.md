# To Build and Deploy

To Biuld Image:

docker build -t flaskapi:latest .

To Run the app
docker run -p 8090:8090 flaskapi:latest & 


To Change the Port Number
flask run --host 0.0.0.0 --port 8090


Reference
https://hackmd.io/@the-ansible-book/B1y5tXers
https://medium.com/@prateekbansalind/python-programs-4-dockerizing-your-flask-api-for-seamless-deployments-28c1842a92cb
https://sddcadvisors.com/running-ansible-playbook-from-python-code/


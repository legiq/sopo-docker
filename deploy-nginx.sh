#!/bin/bash

sudo docker run\
 --net=host\
 --volume /home/nikaorl/.ssh:/root/.ssh\
 --volume /home/nikaorl/github/sopo-2:/sopo\
 --volume /root/.ansible/roles:/root/.ansible/roles/\
 ansible ansible-playbook -i /sopo/environments/clone/inventory /sopo/playbooks/nginx.yml -D


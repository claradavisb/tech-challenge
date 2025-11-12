#!/bin/bash

set -e 

ansible-playbook -i ansible/inventory ansible/playbook.yml

echo "Server running at https://localhost"
echo "To stop, run 'docker stop new-webserver'"
echo "To remove, run 'docker rm new-webserver'"

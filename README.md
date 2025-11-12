# Web Server Tech Challenge 2025

An example web server hosted with Nginx, deployed with Docker, and managed with Ansible.

## How to run

Requirements:
* Linux (Tested on Ubuntu 22.04 on WSL 2)
* Docker ([Install Link](https://docs.docker.com/engine/install/ubuntu/))
* OpenSSL (Usually installed by default)
* Ansible (```apt install ansible```)

Clone this repository and run ```./auto_setup.sh```
Open your browser and navigate to ```https://localhost```
You'll see a security warning, this is because the certificate is self signed.

Windows users will need to install WSL 2 and Docker Desktop, then enable its WSL 2 backend. ([Docker Desktop Install Link](https://docs.docker.com/desktop/features/wsl/))

## Components

### Docker

Docker was chosen for its familiarity and portability. Containerization requires significantly less resources than a full virtual machine, which would use too much for a simple web server. Since it's portable, Docker allows for easy setup and could be deployed in neat, reliable packages in a production environment.

### Nginx

I chose Nginx for its overall simplicity and wide industry use. Configuration was easy to pick up, and it being commonly used allows others to easily contribute to this project if it was full-scale. Also, Nginx is lighter than Apache which suits this page. Either choice, it is more secure to use proven server implementations than create one from scratch.

### Ansible

Keeping with simplicity I chose Ansible for configuration management. It's based in YAML, so the playbook is relatively easy to understand and configure. Compared to other management tools, Ansible is agentless, meaning it doesn't require extra management infrastructure. For this case it didn't make sense to run a master server before my own. In a scaled environment though other tools may fit better.

### Motivation

This project provided me with great DevOps experience, with concepts including infrastructure as code, containerization, and certificate management. I'll be applying this knowledge in a Secure Web Administration course offered in Spring, where Ansible is part of the curriculum. Additionally, I wanted to include Ansible in order to automate certificate generation, and prevent committed secrets.

I plan to extend this project to include further security hardening and monitoring for coursework, and integrate with Cloudflare and Let's Encrypt to host a personal site.
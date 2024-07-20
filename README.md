# 🐳 Swarm of Flask: A Docker Swarm Adventure

Welcome to the cutting-edge world of containerized web applications! This project isn't just another Dockerized Flask app - it's a full-fledged orchestration masterpiece using Docker Swarm. Prepare to dive into a sea of containers, where Flask, Nginx, and MariaDB dance in perfect harmony.

## 🌟 What's This Sorcery?

Imagine a world where your Flask application scales effortlessly, your database purrs like a contented kitten, and your web server stands guard like an tireless sentinel. That's the magic of our Docker Swarm setup!

- 🚀 **Flask**: Your Python-powered rocket to web app glory
- 🛡️ **Nginx**: The stalwart reverse proxy, defending your app from the chaos of the internet
- 🐬 **MariaDB**: Where your data swims freely and securely

## 🌠 Project Structure
├── docker-compose.yml

├── flask_app

│ ├── Dockerfile

│ ├── app

│ │ ├── init.py

│ │ ├── routes.py

│ │ ├── models.py

│ │ ├── templates

│ │ │ ├── base.html

│ │ │ ├── index.html

│ │ │ ├── ...

│ ├── requirements.txt

│ └── ...

├── nginx

│ ├── Dockerfile

│ └── nginx.conf

└── data

## 🛠️ Gear Up!

Before we embark on this containerized journey, make sure you've got:

- Docker (preferably with a whale-themed desktop background)
- Docker Swarm (because herding containers is fun!)
- A terminal and a dream

## 🚀 Launch Sequence

1. **Clone the mothership:**
   
      _git clone https://github.com/aliahmadmehmood/assignment_12.git_
      
      _cd assignment_12_
   

3. **Prepare for takeoff:**
   Create a `.env` file in the root directory. Fill it with secrets:
  
   _MYSQL_ROOT_PASSWORD=supersecretpassword_
   
   _MYSQL_DATABASE=flask_galaxy_
   
   _MYSQL_USER=space_cadet_
   
   _MYSQL_PASSWORD=warp_speed_
   
   Or Edit the "**docker-compose-yml**" and set ur cerdential in db image. 

5. **Initiate the Swarm:**
   
      _sudo docker swarm init_
   

6. **Deploy the stack:**
  
      _sudo docker stack deploy -c docker-compose.yml blog_

7. **Watch your fleet take flight:**
   
      _sudo docker service ls_
   

8. **Open a wormhole to your app:**
   Navigate to `http://localhost` in your favorite browser

## 🌌 The Cosmic Architecture

- **Flask App**: Your trusty space shuttle
- **Nginx**: The space station, routing cosmic traffic
- **MariaDB**: The black hole where data gets stored (but not lost!)

## 🕹️ Command Center

- **Scale your fleet:**

     _docker service scale blog_nginx=3_


- **Inspect a service:**
 
     _docker service inspect blog_
 

- **View service logs:**
 
     _docker service logs blog_web or blog_db or blog_nginx_
 

- **Update your stack:**
 
     _docker stack deploy -c docker-compose.yml blog_


## 🛑 Emergency Shutdown

When the space debris gets too thick:

   _docker stack rm flask_blog_
   
   _docker swarm leave --force_


## 🚀 Ready for Liftoff?

Your mission, should you choose to accept it, is to explore this Docker Swarm, boldly go where no container has gone before, and maybe, just maybe, deploy an app that's out of this world.
May your containers be light and your services plenty. Godspeed, space cadet! 🌠

# 🐳 Swarm of Flask: A Docker Swarm Adventure

Welcome to the cutting-edge world of containerized web applications! This project isn't just another Dockerized Flask app - it's a full-fledged orchestration masterpiece using Docker Swarm. Prepare to dive into a sea of containers, where Flask, Nginx, and MariaDB dance in perfect harmony.

## 🌟 What's This Sorcery?

Imagine a world where your Flask application scales effortlessly, your database purrs like a contented kitten, and your web server stands guard like an tireless sentinel. That's the magic of our Docker Swarm setup!

- 🚀 **Flask**: Your Python-powered rocket to web app glory
- 🛡️ **Nginx**: The stalwart reverse proxy, defending your app from the chaos of the internet
- 🐬 **MariaDB**: Where your data swims freely and securely

## 🛠️ Gear Up!

Before we embark on this containerized journey, make sure you've got:

- Docker (preferably with a whale-themed desktop background)
- Docker Swarm (because herding containers is fun!)
- A terminal and a dream

## 🚀 Launch Sequence

1. **Clone the mothership:**
   
   git clone https://github.com/aliahmadmehmood/assignment_12.git
   
   cd assignment_12
   

3. **Prepare for takeoff:**
   Create a `.env` file in the root directory. Fill it with secrets:
  
   MYSQL_ROOT_PASSWORD=supersecretpassword
   MYSQL_DATABASE=flask_galaxy
   MYSQL_USER=space_cadet
   MYSQL_PASSWORD=warp_speed
   

4. **Initiate the Swarm:**
   
   _sudo docker swarm init_
   

5. **Deploy the stack:**
  
   _sudo docker stack deploy -c docker-compose.yml flask_cosmos_

6. **Watch your fleet take flight:**
   
   _sudo docker service ls_
   

7. **Open a wormhole to your app:**
   Navigate to `http://localhost` in your favorite browser

## 🌌 The Cosmic Architecture

- **Flask App**: Your trusty space shuttle
- **Nginx**: The space station, routing cosmic traffic
- **MariaDB**: The black hole where data gets stored (but not lost!)

## 🕹️ Command Center

- **Scale your fleet:**

  _docker service scale flask_cosmos_flask=3_


- **Inspect a service:**
 
  _docker service inspect flask_cosmos_flask_
 

- **View service logs:**
 
  _docker service logs blog_web/blog_db/blog_nginx_
 

- **Update your stack:**
 
  _docker stack deploy -c docker-compose.yml blog_


## 🛑 Emergency Shutdown

When the space debris gets too thick:

_docker stack rm flask_blog
docker swarm leave --force_


## 🚀 Ready for Liftoff?

Your mission, should you choose to accept it, is to explore this Docker Swarm, boldly go where no container has gone before, and maybe, just maybe, deploy an app that's out of this world.
May your containers be light and your services plenty. Godspeed, space cadet! 🌠

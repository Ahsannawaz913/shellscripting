#!/bin/bash
#deploy a danjgo app and handle the code error
code-clone() {
        echo "cloning the code from git hub"
	sudo git clone https://github.com/LondheShubham153/django-notes-app.git
}
install-requirements() {
                 echo "installing dependencies"
		 sudo apt-get install docker.io nginx -y
} 
required-restart() { 
                 echo "restart the services"
		 sudo chown $USER /var/run/docker.sock
		 sudo systemctl enable docker
		 sudo systemctl enable nginx
		 sudo systemctl restart docker

}
deploy() {

	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}
   echo "developement started"
  if ! code-clone; then
	  echo "the code dirctory already exist"
	  cd django-notes-app
  fi

   install-requirements
   required-restart
   deploy

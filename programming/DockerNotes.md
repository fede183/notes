Docker Notes
============

# Stateless Applications
Configuration state are in environment variables that can be passed to your application at runtime.

# Externalizing State
Idem Stateless Applications, databases can be store in different containers.

# Filesystem layers
Each identify by an unique hash. Linux containers is divided in filesystem layers. Lets you only apply changes on the layers that are necessary to change.

# Image tags
Lets you keep multiple or older version of your application on the server so when you need to do a roolback or know the previous versions you can do it easily.

# Testing
Unit or integration testing can be done in a semi-live environment.


# Docker ecosystem

# Orchestration
It solves the problem of the mass deployment tools, works like traditional ones but leverage the container as the distribution artifact. One example is Kubernetes.

# Immutable atomic hosts
Updates must often be applied via nonatomic operations, and there are many ways in witch host configurations can diverge and introduce unexpected behavior into systems.

# Usefull commands
## Remove images
docker rmi image_name:version/image-id
docker rm $(docker kill $(docker ps -aq))

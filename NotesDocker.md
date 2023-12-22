Notes Docker
============

# The Docker Landscape
## Process Simplification
1. Application developers request resources from operations engineers.
2. Resources are provisioned and handed over to developers.
3. Developers script and tool their deployment.
4. Operations engineers and developers tweak the deployment repeatedly.
5. Additional application dependencies are discovered by developers.
6. Operations engineers work to install the additional requirements.
7. Loop over steps 4 through 6 n more times.
8. The application is deployed.

## Containers Are Not Virtual Machine
Containers are lightweight wrappers around a single Unix process. During actual implementation, that process might spawn other process. They are also more ephemeral: thay can come and go more readily that a vm.

## Limited Isolation
Containers are isolated from one another. While you can put limits on their resources, the default container configuration just has them all sharing CPU and memory on the host.

Is common for containers to share one or more filesystem layers.

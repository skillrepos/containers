# Containers A-Z - lab setup

These instructions will guide you through configuring a GitHub Codespaces environment that you can use to run the course labs.

These steps **must** be completed prior to starting the actual labs.

## Create your own repository for these labs

- Ensure that you have created a repository by forking the [skillrepos/caz-class-v2](https://github.com/skillrepos/cas-class-v2) project as a template into your own GitHub area.
- You do this by clicking the `Fork` button in the upper right portion of the main project page and following the steps to create a copy in **your-github-userid/caz-class-v2** .

![Forking repository](./images/cazclass1.png?raw=true "Forking the repository")
![Forking repository](./images/cazclass3.png?raw=true "Forking the repository")

## Configure your codespace

1. In your forked repository, start a new codespace.

    - Click the `Code` button on your repository's landing page.
    - Click the `Codespaces` tab.
    - Click `Create codespaces on main` to create the codespace.
    - After the codespace has initialized there will be a terminal present.

![Starting codespace](./images/cazclass2.png?raw=true "Starting your codespace")


## Start your single-node Kubernetes cluster

2. There is a simple one-node Kubernetes instance called **minikube** available in your codespace. Start it the following way:

    - Run the following commands in the codespace's terminal (**This will take several minutes to run...**):

      ```
      minikube start
      ```

    - The output should look similar to the following.

😄  minikube v1.31.2 on Ubuntu 20.04 (docker/amd64)
✨  Automatically selected the docker driver. Other choices: none, ssh
📌  Using Docker driver with root privileges
👍  Starting control plane node minikube in cluster minikube
🚜  Pulling base image ...
💾  Downloading Kubernetes v1.27.4 preload ...
    > preloaded-images-k8s-v18-v1...:  393.21 MiB / 393.21 MiB  100.00% 206.91 
    > gcr.io/k8s-minikube/kicbase...:  447.62 MiB / 447.62 MiB  100.00% 56.57 M
🔥  Creating docker container (CPUs=2, Memory=2200MB) ...
🐳  Preparing Kubernetes v1.27.4 on Docker 24.0.4 ...
    ▪ Generating certificates and keys ...
    ▪ Booting up control plane ...
    ▪ Configuring RBAC rules ...
🔗  Configuring bridge CNI (Container Networking Interface) ...
    ▪ Using image gcr.io/k8s-minikube/storage-provisioner:v5
🔎  Verifying Kubernetes components...
🌟  Enabled addons: default-storageclass, storage-provisioner
🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default

## Enable a local insecure registry to store images in

3. Enable an addon for minikube to provide a local registry to temporarily store images

    - Run the following command in the codespace's terminal:

      ```bash
      minikube addons enable registry
      ```

    - The output should look similar to the following:

  ```console
   💡  registry is an addon maintained by Google. For any concerns contact minikube on GitHub.
   You can view the list of minikube maintainers at: https://github.com/kubernetes/minikube/blob/master/OWNERS
    ▪ Using image gcr.io/google_containers/kube-registry-proxy:0.4
    ▪ Using image docker.io/registry:2.8.1
   🔎  Verifying registry addon...
   🌟  The 'registry' addon is enabled
  ```
## Set aliases

4. Set up a simple alias for tooling

```
alias k=kubectl
```

## Labs

5. After the codespace has started, open the labs document by going to the file tree on the left, find the file named **codespace-labs.md**, right-click on it, and open it with the **Preview** option.)

![Labs doc preview in codespace](./images/cazclass4.png?raw=true "Labs doc preview in codespace")

This will open it up in a tab above your terminal. Then you can follow along with the steps in the labs. 
Any command in the gray boxes is either code intended to be run in the console or code to be updated in a file.

Labs doc: [Containers A-Z Labs](codespace-labs.md)


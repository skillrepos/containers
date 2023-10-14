# Containers A-Z - lab setup

These instructions will guide you through configuring a GitHub Codespaces environment that you can use to run the course labs.

These steps **must** be completed prior to starting the actual labs.

## Create your own repository for these labs

- Ensure that you have created a repository by forking the [skillrepos/k8s-dev-v2](https://github.com/skillrepos/cas-class-v2) project as a template into your own GitHub area.
- You do this by clicking the `Fork` button in the upper right portion of the main project page and following the steps to create a copy in **your-github-userid/caz-class-v2** .

![Forking repository](./images/cazclass1.png?raw=true "Forking the repository")

## Configure your codespace

1. In your forked repository, start a new codespace.

    - Click the `Code` button on your repository's landing page.
    - Click the `Codespaces` tab.
    - Click `Create codespaces on main` to create the codespace.
    - After the codespace has initialized there will be a terminal present.

![Starting codespace](./images/casclass2.png?raw=true "Starting your codespace")


## Start your single-node Kubernetes cluster
2. There is a simple one-node Kubernetes instance called **minikube** available in your codespace. Start it the following way:

    - Run the following commands in the codespace's terminal (**This will take several minutes to run...**):

      ```
      minikube start
      ```

    - The output should look similar to the following.

```console
😄  minikube v1.30.1 on Ubuntu 20.04 (docker/amd64)
✨  Using the docker driver based on existing profile
👍  Starting control plane node minikube in cluster minikube
🚜  Pulling base image ...
🏃  Updating the running docker "minikube" container ...
🐳  Preparing Kubernetes v1.26.3 on Docker 23.0.2 ...
🔎  Verifying Kubernetes components...
    ▪ Using image gcr.io/k8s-minikube/storage-provisioner:v5
🌟  Enabled addons: storage-provisioner, default-storageclass
🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default
```

## Set aliases
3. Set up a couple of simple aliases for tooling

```
alias k=kubectl
alias kz=kustomize
```

## Labs

After the codespace has started, open the labs document by going to the file tree on the left, find the file named **codespace-labs.md**, right-click on it, and open it with the **Preview** option.)

![Labs doc preview in codespace](./images/cazclass3.png?raw=true "Labs doc preview in codespace")

This will open it up in a tab above your terminal. Then you can follow along with the steps in the labs. 
Any command in the gray boxes is either code intended to be run in the console or code to be updated in a file.

Labs doc: [Containers A-Z Labs](codespace-labs.md)


# Containers Fundamentals - Lab Setup

These instructions will guide you through configuring a GitHub Codespaces environment that you can use to run the course labs. (*Doing this in Chrome if you have it may work better for copy and paste actions.*)

These steps **must** be completed prior to starting the actual labs.

*(Note: If you prefer to run this in your own environment, you will need to have Docker and Kubernetes installed and configured, and have a clone of this repository. If you run in your own environment, some elements in the labs may look/be different and are not guaranteed to function the same way. For those reasons, the codespace environment is the recommended one for the class.)*

If using the codespace environment, follow the instructions below.

**1. Click on the button below to start a new codespace from this repository.**

Click here ➡️  [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/skillrepos/containers?quickstart=1)

**2. Then click on the option to create a new codespace.**

![Creating new codespace from button](./images/cf01.png?raw=true "Creating new codespace from button")

This will run for a while to get everything ready.

## Start the Kubernetes cluster and complete setup

**3. Run the following commands in the codespace's terminal (This will take several minutes to run...):**

      ```
      ./setup.sh
      ```

    - The output should look similar to the following.

```console
😄  minikube v1.33.1 on Ubuntu 20.04 (docker/amd64)
✨  Automatically selected the docker driver. Other choices: ssh, none
📌  Using Docker driver with root privileges
👍  Starting "minikube" primary control-plane node in "minikube" cluster
🚜  Pulling base image v0.0.44 ...
💾  Downloading Kubernetes v1.30.0 preload ...
    > preloaded-images-k8s-v18-v1...:  342.90 MiB / 342.90 MiB  100.00% 207.93 
    > gcr.io/k8s-minikube/kicbase...:  481.58 MiB / 481.58 MiB  100.00% 66.28 M
🔥  Creating docker container (CPUs=2, Memory=2200MB) ...
🐳  Preparing Kubernetes v1.30.0 on Docker 26.1.1 ...
    ▪ Generating certificates and keys ...
    ▪ Booting up control plane ...
    ▪ Configuring RBAC rules ...
🔗  Configuring bridge CNI (Container Networking Interface) ...
🔎  Verifying Kubernetes components...
    ▪ Using image gcr.io/k8s-minikube/storage-provisioner:v5
🌟  Enabled addons: storage-provisioner, default-storageclass
🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default
💡  registry is an addon maintained by minikube. For any concerns contact minikube on GitHub.
You can view the list of minikube maintainers at: https://github.com/kubernetes/minikube/blob/master/OWNERS
    ▪ Using image gcr.io/k8s-minikube/kube-registry-proxy:0.0.6
    ▪ Using image docker.io/registry:2.8.3
🔎  Verifying registry addon...
🌟  The 'registry' addon is enabled
```

## Labs

**4. After the codespace has started, open the labs document by going to the file tree on the left, find the file named *codespace-labs.md*, right-click on it, and open it with the *Preview* option.)**

![Labs doc preview in codespace](./images/cf03.png?raw=true "Labs doc preview in codespace")

This will open it up in a tab above your terminal. Then you can follow along with the steps in the labs. 
Any command in the gray boxes is either code intended to be run in the console or code to be updated in a file.

Labs doc: [Containers Fundamentals Labs](codespace-labs.md)

**5. (Optional, but recommended) Change your codespace's default timeout from 30 minutes to longer (45 minimum).**
To do this, when logged in to GitHub, go to https://github.com/settings/codespaces and scroll down on that page until you see the *Default idle timeout* section. Adjust the value as desired.

![Changing codespace idle timeout value](./images/dga56.png?raw=true "Changing codespace idle timeout value")

**NOTE: If your codespace times out and you need to reopen it**

1. Go to https://github.com/<your github userid>/codespaces
2. Find the codespace in the list, right-click, and select *Open in browser*
3. After the codespace opens up, run the script *minikube start* in the terminal. (You might need to run this more than once if restarting a codespace depending on timing.)
```
minikube start
```

<br/><br/>

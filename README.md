# Containers Fundamentals - Lab Setup

These instructions will guide you through configuring a GitHub Codespaces environment that you can use to run the course labs.

These steps **must** be completed prior to starting the actual labs.

(If you prefer to run this in your own environment, you will need to have Docker and Kubernetes installed and configured, and have a clone of this repository. If you run in your own environment, some elements in the labs may look/be different and are not guaranteed to function the same way. For those reasons, the codespace environment is the recommended one for the class.)

If using the codespace environment, follow the instructions below.

**1. Click on the button below to start a new codespace from this repository.**

Click here ➡️  [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/skillrepos/containers?quickstart=1)

**2. Then click on the option to create a new codespace.**

![Creating new codespace from button](./images/cf01.png?raw=true "Creating new codespace from button")

This will run for a while to get everything ready.

NOTE: At the end, after the codespace is actually started, it will still be running some post-startup scripts that will take a few more minutes to complete as shown below:

![Running post-install scripts](./images/dga66.png?raw=true "Running post-install scripts")

The codespace is ready to use when you see a prompt like the one shown below in its terminal.

![Ready to use](./images/dga67.png?raw=true "Ready to use")


## Start the Kubernetes cluster and complete setup

**3. Run the following commands in the codespace's terminal (This will take several minutes to run...):**

      ```
      . ./setup.sh
      ```

    - The output should look similar to the following.

```console
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
```

  ```console
   💡  registry is an addon maintained by Google. For any concerns contact minikube on GitHub.
   You can view the list of minikube maintainers at: https://github.com/kubernetes/minikube/blob/master/OWNERS
    ▪ Using image gcr.io/google_containers/kube-registry-proxy:0.4
    ▪ Using image docker.io/registry:2.8.1
   🔎  Verifying registry addon...
   🌟  The 'registry' addon is enabled
  ```

## Labs

**4. After the codespace has started, open the labs document by going to the file tree on the left, find the file named *codespace-labs.md*, right-click on it, and open it with the *Preview* option.)**

![Labs doc preview in codespace](./images/cf04.png?raw=true "Labs doc preview in codespace")

This will open it up in a tab above your terminal. Then you can follow along with the steps in the labs. 
Any command in the gray boxes is either code intended to be run in the console or code to be updated in a file.

Labs doc: [Containers Fundamentals Labs](codespace-labs.md)

**5. (Optional, but recommended) Change your codespace's default timeout from 30 minutes to longer (45 minimum).**
To do this, when logged in to GitHub, go to https://github.com/settings/codespaces and scroll down on that page until you see the *Default idle timeout* section. Adjust the value as desired.

![Changing codespace idle timeout value](./images/dga56.png?raw=true "Changing codespace idle timeout value")

**NOTE: If your codespace times out and you need to reopen it**

1. Go to https://github.com/<your github userid>/codespaces
2. Find the codespace in the list, right-click, and select *Open in browser*
3. After the codespace opens up, run the script *./setup.sh* in the terminal. (You might need to run this more than once if restarting a codespace depending on timing.)
```
./setup.sh
```

<br/><br/>

<h3> docker_jenkins</h3>

This a containerized version of Centos & Jenkins.
Jenkins contains default job called "hello" which executes simple command "echo Hello World!".
Additional packets are: ansible, python, mercurial, openssh, java

<h2>Build</h2>
Build the container yourself by running the following command from the project directory containing the Dockerfile:

```
docker build -t jenkins_image .
```
<h2>Run</h2>

```
docker run -d -p 8080:8080 --name jenkins_image jenkins_container
```
<h2>Access Jenkins</h2>

```
http://localhost:8080
```

# Usage
 ```
 docker run -e OPENBALENA=YourOpenBalena -e BALENALOGIN=YourBalenaLogin -e BALENAPASSWORD=YourBalenaPassword razikus/balena-dockerized-cli:master balena devices
 ```
 Environments:
* OPENBALENA - Your open balena instance url
* BALENALOGIN - Your balena/openbalena login
* BALENAPASSWORD - Your balena/openbalena password


Easy to integrate with gitlabci.yml as base image.

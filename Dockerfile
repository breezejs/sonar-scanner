FROM node:8.10.0

RUN apt-get update

RUN apt-get install unzip

RUN wget -q https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.3.0.1492-linux.zip

RUN unzip sonar-scanner-cli-3.3.0.1492-linux.zip

RUN sudo mv sonar-scanner-3.3.0.1492-linux /var/opt

ENV PATH "$PATH:/var/opt/sonar-scanner-3.3.0.1492-linux/bin"

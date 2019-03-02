FROM circleci/node:8.10.0

RUN mkdir -p /var/opt

COPY sonar-scanner-cli-3.3.0.1492-linux.zip ./

RUN unzip sonar-scanner-cli-3.3.0.1492-linux.zip

RUN mv sonar-scanner-3.3.0.1492-linux /var/opt

ENV PATH "$PATH:/var/opt/sonar-scanner-3.3.0.1492-linux/bin"

FROM python:3.8

RUN apt-get update
RUN apt-get install -y jq zip python3-setuptools
RUN pip3 install awscli
RUN pip3 install --upgrade setuptools

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

FROM python:3.8

RUN apt-get update
RUN apt-get install -y jq zip python3-setuptools
RUN pip install awscli

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

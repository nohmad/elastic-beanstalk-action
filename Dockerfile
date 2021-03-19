FROM python:3.8-slim-buster
RUN mkdir -p /root/.aws
RUN pip install awsebcli
RUN apt-get update && apt-get install -y --no-install-recommends git && rm -rf /var/lib/apt/lists/*
ADD entrypoint.sh /
ENTRYPOINT ["eb"]
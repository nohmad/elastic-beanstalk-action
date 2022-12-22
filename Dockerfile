FROM python:3.8-slim-buster
RUN pip install awsebcli
RUN apt-get update && apt-get install -y --no-install-recommends git && rm -rf /var/lib/apt/lists/*
COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

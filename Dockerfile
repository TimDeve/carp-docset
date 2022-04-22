FROM golang:1.18.1-bullseye

WORKDIR /opt/workdir

RUN apt-get update \
  && apt-get -y install ffmpeg pandoc unzip curl jq \
  && rm -rf /var/lib/apt/lists/*
RUN go install github.com/technosophos/dashing@172c69f1c58cf6efe5b1813fa06ce29a684b00e4

CMD ./create-docset

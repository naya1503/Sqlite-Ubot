FROM python:3.10-slim-buster

RUN apt-get autoremove -y \
    && apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
    git \
    curl \
    python3-dev \
    ffmpeg \
    neofetch \
    apt-utils \
    libmediainfo0v5 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*WORKDIR /app

WORKDIR /app/
COPY . /app/

RUN pip3 install -U pip

RUN pip3 install -r req.txt

CMD bash reng
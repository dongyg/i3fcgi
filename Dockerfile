FROM dongyg/i3shell

RUN \
    DEBIAN_FRONTEND=noninteractive \
    apt-get -q -y update && \
    apt-get -q -y install fcgiwrap

COPY requirements.txt /
RUN pip install --no-cache-dir -r /requirements.txt

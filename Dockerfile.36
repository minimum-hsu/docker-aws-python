FROM python:3.6

LABEL maintainer s5550055@yahoo.com.tw

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --quiet --upgrade --no-cache-dir -r requirements.txt && rm requirements.txt

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

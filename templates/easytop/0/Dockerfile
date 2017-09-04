FROM frolvlad/alpine-python3
ENV PYTHONUNBUFFERED 1

RUN apk add --no-cache gcc musl-dev curl openssl python3-dev postgresql-dev
ADD requirements.txt /app/
RUN mkdir /app/pip
RUN pip download  -d /app/pip -r /app/requirements.txt
RUN apk add --no-cache libffi-dev zlib-dev libjpeg-turbo-dev libpng-dev libwebp-dev linux-headers
RUN pip install --find-links /app/pip -r /app/requirements.txt

ADD . /app
WORKDIR /app

EXPOSE 8000
ENV PORT 8000

CMD ["uwsgi", "/app/saleor/wsgi/uwsgi.ini"]

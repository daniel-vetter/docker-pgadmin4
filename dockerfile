FROM python:3.6.5-alpine

RUN apk add --no-cache --virtual build-deps gcc python3-dev musl-dev \
    && apk add --no-cache postgresql-dev \
    && pip install psycopg2 \
    && pip3 install https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v3.0/pip/pgadmin4-3.0-py2.py3-none-any.whl \
    && apk del build-deps

COPY local_config.py /usr/local/lib/python3.6/site-packages/pgadmin4/config_local.py

ENTRYPOINT python3 /usr/local/lib/python3.6/site-packages/pgadmin4/pgAdmin4.py
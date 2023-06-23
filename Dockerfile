FROM python:3.11.2-alpine

RUN pip install --upgrade pip

COPY ./requirements.txt .

RUN pip install -r requirements.txt

COPY ./dockerdjango /app

WORKDIR /app 

COPY ./entrypoint.sh /

ENTRYPOINT [ "sh","entrypoint.sh" ]
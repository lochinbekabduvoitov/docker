FROM python:3.11.2

ENV PYTHONNUNBUFFERED=1

WORKDIR /code

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD [ "python3","manage.py","runserver","80.89.228.71:8000","--reload"]
FROM python:3.10

RUN apt-get update

ENV PYTHONUNBUFFERED 1

COPY . /app

WORKDIR /app

RUN mkdir -p media
RUN chmod -R 777 media

RUN pip install pipenv

RUN pip install -r requirements.txt

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

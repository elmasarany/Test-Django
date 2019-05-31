FROM python:3.6.7

ENV PYTHONUNBUFFERD 1
RUN mkdir /code
WORKDIR /code
COPY . /code/
RUN pip install -r requirements.txt

CMD ["python", "manage.py", "runserver"]

EXPOSE 8000
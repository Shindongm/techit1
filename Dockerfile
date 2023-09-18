FROM python:3.11.5

WORKDIR /home/

RUN git clone https://github.com/Shindongm/techit1.git

WORKDIR /home/techit1/

RUN pip install -r requirements.txt

RUN pip install gunicorn

EXPOSE 8000


CMD ["bash", "-c", "python manage.py migrate && gunicorn techit.wsgi --bind 0.0.0.0:8000"]


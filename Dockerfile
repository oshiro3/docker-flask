FROM python:3.8.5

LABEL author="oshiro3"
LABEL version="0.1"

WORKDIR /var/www/src

COPY requirements.txt /var/www/src/
RUN pip install -r /var/www/src/requirements.txt

COPY runner.py /var/www/src/

CMD ["python", "runner.py"]

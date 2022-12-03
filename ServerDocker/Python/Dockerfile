FROM python:3

ADD ./API-Python/src/main.py /
ADD ./API-Python/src/database.py /
ADD ./API-Python/src/notifier.py /

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
CMD [ "python", "./main.py" ]

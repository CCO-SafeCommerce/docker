FROM python:3

ADD main.py /
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "./API-Python/src/main.py" ]

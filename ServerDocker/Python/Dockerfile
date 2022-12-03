FROM python:3

ADD main.py /
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN cd API-Python/src/
CMD [ "python", "./main.py" ]

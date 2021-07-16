FROM python:3.6

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY server server/

EXPOSE 5000

CMD ["python","flask","run", "server/main.py"]
FROM python:3.9

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install --no-cache-dir -r /tmp/requirements.txt

ADD app/ /app/app

WORKDIR /app

EXPOSE 8005
CMD ["uvicorn", "--host", "0.0.0.0" , "--reload", "--port", "8005", "path.to:app"]

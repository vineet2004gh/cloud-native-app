FROM python:3.9-slim-bullseye

RUN apt-get update && apt-get install -y gcc python3-dev

WORKDIR /app

COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 5000

CMD ["flask", "run"]
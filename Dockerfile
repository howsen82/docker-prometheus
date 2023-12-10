FROM python:3.12.1-slim

RUN pip install Flask prometheus-flask-exporter

WORKDIR /app

COPY pythonserver.py .

EXPOSE 8080

CMD ["python", "pythonserver.py"]

# Manual build
# docker network create monitor
# docker build -t pythonserver .
# docker run -d --name pythonserver -p 8081:8080 --network monitor pythonserver
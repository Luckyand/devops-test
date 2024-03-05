FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt
#RUN pip install --upgrade werkzeug

COPY app.py .

#CMD ["python", "app.py"]
CMD ["python", "app.py"]

RUN useradd -m appuser
RUN chown -R appuser:appuser /app

ENV TZ Asia/Jakarta
EXPOSE 8123

USER appuser

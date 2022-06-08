FROM python:3.9-slim
WORKDIR /app
ADD . /app
RUN pip install --trusted-host pypi.python.org Flask Redis
EXPOSE 80
CMD ["python", "app.py"]
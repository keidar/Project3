FROM python:3.7-alpine
COPY rest_app.py backend_testing.py db_connector.py clean_environment.py .env requirements.txt /
RUN pip3 install -r requirements.txt
CMD ["python3", "./rest_app.py"]

FROM python:3-alpine
COPY rest_app.py backend_testing.py db_connector.py clean_environment.py /
RUN pip install -r requirements.txt
CMD ["python3", "./rest_app.py"]

FROM python:3-alpine
COPY db_connector.py rest_app.py backend_testing.py db_connector.py clean_environment.py /
RUN pip install flask
RUN pip install signal
CMD ["python3", "./rest_app.py"]

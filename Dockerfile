FROM python:3-alpine
COPY rest_app.py backend_testing.py db_connector.py clean_environment.py /
RUN pip install flask
RUN pip install PyMySQL
RUN pip install python-dotenv
RUN pip install pathlib
CMD ["python3", "./rest_app.py"]

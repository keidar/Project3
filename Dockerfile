FROM python:3-alpine
COPY db_connector.py rest_app.py backend_testing.py db_connector.py clean_environment.py /
CMD ["python3", "./getUser.py"]

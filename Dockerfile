FROM python:3
WORKDIR /Users/ivan/Documents/Iván/Code/docker-python-example-master/build
COPY Pipfile ./
RUN pip install --no-cache-dir pipenv==2020.11.15 && pipenv install
COPY app.py .
COPY tests.py .
CMD [ "pipenv", "run", "python", "-m", "flask", "run", "--host=0.0.0.0" ]

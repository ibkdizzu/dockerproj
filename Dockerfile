FROM python:3.7.3-stretch

#working directory
WORKDIR /app

#Copy source code to working drectory
COPY . app.py /app/

#Install packages from requirements.txt
#hadolint ignore=DL30120
RUN pip install pip==22.2.2 &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
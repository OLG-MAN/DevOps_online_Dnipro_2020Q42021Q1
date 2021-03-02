FROM amazonlinux

RUN yum update
RUN yum install -y python3

RUN yum -y install python-pip
COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt

COPY app.py /usr/src/app/
COPY templates/index.html /usr/src/app/templates/
EXPOSE 5000

CMD ["python", "/usr/src/app/app.py"]
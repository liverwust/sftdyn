FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

ADD etc/sample.conf /etc/sftdyn/conf
ADD sftdyn/ sftdyn/

CMD [ "python", "-m", "sftdyn" ]

EXPOSE 8080/tcp

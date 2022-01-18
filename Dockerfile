FROM darkghostx/mirleechx:902e9eb9b1eb273295fb2ccbdc5b0c1d63d7feeb
# FROM anasty17/mltb-oracle:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]

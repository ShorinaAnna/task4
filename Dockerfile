FROM ubuntu:20.04


WORKDIR /app
COPY task6/cmake-with-flask .

RUN apt-get update
RUN apt-get install -y tzdata
RUN apt-get install -y cmake g++ python3 python3-pip
RUN pip install flask

RUN cmake . && make && ./bin/C
RUN useradd techproguser

EXPOSE 5000

CMD python3 app.py --port=5000 --host="0.0.0.0"
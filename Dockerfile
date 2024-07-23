FROM python:3.10.11

RUN python -m pip install rasa

WORKDIR /app
COPY . .

RUN rasa train nlu

USER 1001


FROM python:3.10.11

RUN python -m pip install rasa

WORKDIR /app
COPY . .


RUN pip install --no-cache-dir -r requirements.txt
RUN rasa train nlu

#set the user to run, other than as root user
USER 1001

#set entrypoint for interactive shells
ENTRYPOINT ["rasa"]

#Command to run when the container is called
CMD ["Run", "--enable-api", "--port", "8080"]

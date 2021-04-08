FROM python:3.7
RUN apt update && apt install -y python3-pip
# RUN git clone https://github.com/zonaira-hussain/Practical-Project
COPY . .
RUN pip3 install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python3","app.py"]
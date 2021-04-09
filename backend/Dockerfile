FROM python:3.7
# RUN git clone https://github.com/zonaira-hussain/Practical-Project
COPY . .
RUN sudo apt update && sudo apt install -y python3-pip
RUN pip3 install -r requirements.txt
EXPOSE 5001
ENTRYPOINT ["python3","app.py"]

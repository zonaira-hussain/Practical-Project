FROM python3.6
RUN apt-get update && apt-get install -y python3-pip
RUN pip install -r requirements.txt
RUN git clone https://gitlab.com/qacdevops/cne-sfia2-brief
WORKDIR /backend
EXPOSE 5001
ENTRYPOINT ["python3","app.py"]

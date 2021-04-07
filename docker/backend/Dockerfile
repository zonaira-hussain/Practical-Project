FROM python
RUN apt-get update && apt-get install -y python3-pip
RUN git clone https://gitlab.com/qacdevops/cne-sfia2-brief
WORKDIR cne-sfia2-brief/backend
RUN pip install -r requirements.txt
EXPOSE 5001
ENTRYPOINT ["python3","app.py"]

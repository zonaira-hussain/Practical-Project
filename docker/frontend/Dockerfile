FROM python
RUN apt-get update && apt-get install -y python3-pip
RUN git clone https://gitlab.com/qacdevops/cne-sfia2-brief
WORKDIR cne-sfia2-brief/frontend
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python3","app.py"]
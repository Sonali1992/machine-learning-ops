# FROM python:3.12-slim
# WORKDIR /

# COPY model-training-code.py model-training-code.py
# COPY requirements.txt requirements.txt

# RUN pip install -r requirements.txt
# ENTRYPOINT ["python3","model-training-code.py"]


FROM python:3.12-slim
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
CMD ["python3","model-training-code.py"]
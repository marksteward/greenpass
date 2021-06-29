FROM python

RUN pip3 install flynn base45 PyPDF2 pyzbar Pillow

RUN apt-get update && \
    apt-get -y install libzbar0 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY greenpass.py .

ENTRYPOINT ["python", "greenpass.py"]


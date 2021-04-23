FROM python

WORKDIR /app
COPY ./src/requirements.txt .
RUN pip install -r requirements.txt
RUN rm requirements.txt
COPY ./src .

CMD ["python3", "run.py"]
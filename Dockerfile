FROM python:3.11

WORKDIR /bot

COPY . .

RUN pip install poetry
RUN poetry install

ENTRYPOINT ["python", "interface.py"]
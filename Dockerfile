FROM python:3.9.16-alpine3.16
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "-m", "flask", "--app", "src/app", "run", "--debug", "--host=0.0.0.0"]
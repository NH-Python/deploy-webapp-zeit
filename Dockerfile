FROM python:3-alpine
COPY . /primes
WORKDIR /primes
RUN pip install -r requirements.txt
EXPOSE 5000
RUN export FLASK_APP=app.py
# WARNING - Don't use the flask dev server in production
CMD ["flask", "run", "--host=0.0.0.0"]
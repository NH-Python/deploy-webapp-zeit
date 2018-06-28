# Deploying a Python web application to [Zeit](https://zeit.co)

## Deploying to Zeit
* Install Zeit Now  
`npm install -g now`
* Add a docker file to the app:
```
FROM python:3-alpine
COPY . /primes
WORKDIR /primes
RUN pip install -r requirements.txt
EXPOSE 5000
CMD export FLASK_APP=app.py
# WARNING - Don't use the flask dev server in production
CMD ["flask", "run", "--host=0.0.0.0"]
```

## Notes/Helpful links
* [Environment variables/secrets](https://zeit.co/docs/features/env-and-secrets)
* Remember to set up `.gitignore` - Zeit doesn't deploy files ignored
* [Assigning custom domain names](https://zeit.co/docs/getting-started/assign-a-domain-name)
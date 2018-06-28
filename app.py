from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def root_route():
    return 'Hello New Hampshire Python!'

@app.route('/hello/<name>', methods=['GET'])
def hello(name):
    return render_template('hello.html', name=name)

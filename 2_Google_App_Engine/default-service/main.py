from flask import Flask

app = Flask(__name__)

@app.route('/')
def greet():
    return "Hello, App Engine. v1.0.0"

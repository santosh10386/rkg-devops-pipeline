# app.py
# This is a simple Python microservice for the RKG project.
# It uses Flask to create a web server that responds with a greeting message.
# Whenever accessed at the root URL, it returns a friendly "Hello" message.

from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello from RKG microservice!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)


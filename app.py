from flask import Flask, request
import random

app = Flask(__name__)

jokes = [
    "В бар заходит программист. И говорит: '404 пива не найдено!'",
    "Знаешь, что самое страшное? Когда Федот трезвый...",
    "Пью не потому что грустно, а потому что весело!"
]

@app.route('/')
def index():
    return "Федот живой! Жми /say"

@app.route('/say', methods=['GET'])
def say():
    return random.choice(jokes)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=10000)

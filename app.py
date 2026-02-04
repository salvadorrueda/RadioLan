import os
from flask import Flask, render_template, send_from_directory, jsonify

app = Flask(__name__)
MUSIC_DIR = os.environ.get('MUSIC_DIR', 'data/music')

# Ensure music directory exists
os.makedirs(MUSIC_DIR, exist_ok=True)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/api/songs')
def list_songs():
    songs = []
    for filename in os.listdir(MUSIC_DIR):
        if filename.lower().endswith('.mp3'):
            songs.append(filename)
    return jsonify(sorted(songs))

@app.route('/stream/<path:filename>')
def stream_song(filename):
    return send_from_directory(MUSIC_DIR, filename)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=False)

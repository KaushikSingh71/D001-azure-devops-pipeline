from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def home():
    return jsonify({
        "application": "D001 Azure DevOps Project",
        "status": "Running",
        "version": "1.0.0"
    })

@app.route("/health")
def health():
    return jsonify({
        "status": "Healthy"
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

from transformers import pipeline
from flask import Flask, request, jsonify

app = Flask(__name__)

# Load translation pipeline (English to German as example)
translator = pipeline("translation_en_to_de", model="Helsinki-NLP/opus-mt-en-de")

@app.route("/translate", methods=["POST"])
def translate():
    data = request.json
    text = data.get("text", "")
    if not text:
        return jsonify({"error": "No text provided"}), 400
    result = translator(text)
    return jsonify(result)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
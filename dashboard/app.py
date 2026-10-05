from flask import Flask, render_template
import psutil

app = Flask(__name__)

@app.route("/")
def home():
    cpu = psutil.cpu_percent(interval=1)
    memory = psutil.virtual_memory()
    disk = psutil.disk_usage("/")

    return render_template(
        "index.html",
        cpu=cpu,
        memory=memory.percent,
        disk=disk.percent
    )

if __name__ == "__main__":
    app.run(debug=True)

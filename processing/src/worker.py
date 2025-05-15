from celery import Celery
from dotenv import load_dotenv
import os

load_dotenv()

app = Celery(
    "worker",
    broker=os.getenv("REDIS_URL"),
    backend=os.getenv("REDIS_URL")
)

@app.task
def background_task(x, y):
    return x + y

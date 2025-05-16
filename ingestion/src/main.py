from fastapi import FastAPI
from processing.src.worker import background_task

app = FastAPI()

@app.get("/health")
def health_check():
    return {"status": "ok"}

@app.get("/test-task")
def test_task():
    result = background_task.delay(3, 4)
    return {"task_id": result.id}
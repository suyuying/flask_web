## Dockerfile
# 第一層基底
FROM python:3.7.2-stretch
# 複製原始碼

WORKDIR /app
COPY . .
WORKDIR /app/flask-tutorial
# 進行編譯(名稱為：project)
RUN pip install -r requirements.txt
ENV FLASK_APP=flaskr 
ENV FLASK_ENV=development
ENV FLASK_RUN_PORT=8170
CMD flask run --host=0.0.0.0


# 最終運行golang 的基底


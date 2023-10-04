FROM python:3.8-alpine

WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV BOT_TOKEN=<your_bot_token>
ENV ALLOWED_USER_IDS=<allowed_user_ids>

CMD ["python", "main.py"]
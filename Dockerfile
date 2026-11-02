FROM python:3.15-slim
WORKDIR /usr/src/app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 3030
ENV PORT=3030
CMD ["python", "app.py"]

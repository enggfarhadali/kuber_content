FROM public.ecr.aws/docker/library/python:3.9-slim
WORKDIR /app
COPY requirement.txt .
RUN pip install --no-cache-dir -r requirement.txt
COPY app.py .
EXPOSE 80
CMD ["python", "app.py"]

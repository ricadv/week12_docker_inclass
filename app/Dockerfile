FROM python:3

RUN useradd -m -d /app backend
USER backend


RUN mkdir /app/backend
WORKDIR /app/backend

COPY backend /app/backend

RUN pip install flask

COPY student.txt /app/backend
COPY start.sh .

EXPOSE 5000

CMD ["/bin/bash", "start.sh"]
#CMD ["python3", "/app/backend/web.py", "0.0.0.0:5000"]



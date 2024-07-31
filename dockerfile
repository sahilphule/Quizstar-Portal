FROM python
RUN pip install --upgrade pip
ENV PYTHONUNBUFFERED=1
WORKDIR /django-app
COPY ./requirements.txt ./
RUN pip install -r requirements.txt
ENTRYPOINT ["sh","./entrypoint.sh"]
EXPOSE 8000
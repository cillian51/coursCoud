FROM python:3.9


WORKDIR /COURSCOUD


COPY ./requirements.txt /code/requirements.txt


RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt


COPY ./app /COURSCOUD/app
 
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]

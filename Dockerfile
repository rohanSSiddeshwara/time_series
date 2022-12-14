FROM python:3.9

RUN apt-get update


RUN apt install -y git

RUN git clone https://github.com/rohanSSiddeshwara/time_series.git

WORKDIR /time_series

RUN pip install nsetools fastapi uvicorn pandas numpy requests schedule

EXPOSE 8000

CMD ["uvicorn", "daily_data:app", "--reload","--port","8000" ]
 

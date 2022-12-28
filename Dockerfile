FROM python:3.7

WORKDIR /xrp-streamlit-app

COPY ./main.py .

RUN pip install streamlit yfinance plotly prophet

ENTRYPOINT ["streamlit", "run", "/xrp-streamlit-app/main.py", "--server.port=8501", "--server.address=0.0.0.0"]
FROM ollama/ollama

ARG MODEL_NAME=llama3.2-vision:90b

ENV OLLAMA_HOST 0.0.0.0:8000
ENV OLLAMA_KEEP_ALIVE -1

RUN ollama serve & sleep 500 && ollama pull $MODEL_NAME 

ENTRYPOINT ["ollama", "serve"]

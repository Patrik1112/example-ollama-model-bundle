FROM ollama/ollama

ARG MODEL_NAME=llama3.3

ENV OLLAMA_HOST 0.0.0.0:8000
ENV OLLAMA_KEEP_ALIVE -1

RUN ollama serve & sleep 5 && ollama pull $MODEL_NAME 

ENTRYPOINT ["ollama", "serve"]

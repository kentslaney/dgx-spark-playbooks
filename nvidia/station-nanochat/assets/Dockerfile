FROM nvcr.io/nvidia/pytorch:26.04-py3

WORKDIR /workspace

RUN pip install \
    filelock \
    kernels \
    psutil \
    pyarrow \
    rustbpe \
    tiktoken \
    wandb \
    regex \
    pytest \
    jinja2 \
    huggingface_hub \
    datasets \
    files-to-prompt \
    uvicorn \
    fastapi

CMD ["/bin/bash"]
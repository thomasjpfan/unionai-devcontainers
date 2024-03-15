#syntax=docker/dockerfile:1.3
FROM mcr.microsoft.com/devcontainers/python:3.12-bookworm

RUN curl -LsSf https://astral.sh/uv/install.sh | sh

COPY ./requirements.txt .

RUN /root/.cargo/bin/uv pip install --no-cache -r requirements.txt --system

COPY ./python_keyring /home/vscode/.config/python_keyring

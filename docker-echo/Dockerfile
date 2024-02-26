FROM debian:bookworm-slim
RUN mkdir /opt/commands

WORKDIR /opt/commands

ENV PATH="$PATH:/opt/commands"

COPY echo.sh .

ENTRYPOINT [ "bash", "echo.sh" ]
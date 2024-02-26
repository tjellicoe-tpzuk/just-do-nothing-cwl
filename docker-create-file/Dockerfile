FROM debian:bookworm-slim
RUN mkdir /opt/commands

WORKDIR /opt/commands

ENV PATH="$PATH:/opt/commands"

COPY create-file.sh .

ENTRYPOINT [ "bash", "create-file.sh" ]
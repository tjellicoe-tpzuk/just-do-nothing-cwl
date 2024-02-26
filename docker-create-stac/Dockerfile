FROM debian:bookworm-slim
RUN mkdir /opt/commands

WORKDIR /opt/commands

ENV PATH="$PATH:/opt/commands"

COPY create-stac.sh .

ENTRYPOINT [ "bash", "create-stac.sh" ]
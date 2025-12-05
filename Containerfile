# https://bun.sh/guides/ecosystem/docker


FROM oven/bun:latest as base
COPY . /app
WORKDIR /app
RUN cd frontend && bun install && bun run build
EXPOSE 3000/tcp
CMD [ "sh", "-c", "bun --bun ./frontend/build"]
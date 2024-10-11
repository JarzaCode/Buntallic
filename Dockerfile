FROM oven/bun:latest

WORKDIR /app

COPY . /app/

COPY package.json /app/

COPY bun.lockb /app/

RUN apt-get update && apt-get install python3

RUN bun install

# Or run bun run build-static for static build
RUN bun run build

EXPOSE 8080

CMD ["bun", "run", "start"]

FROM golang:1.21-bullseye AS dev
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
EXPOSE 80
CMD ["go", "run", "./cmd/tetris/main.go"]

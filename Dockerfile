FROM golang:1.20
WORKDIR /src/
COPY ./ ./
RUN GOOS=js GOARCH=wasm go build -o ./public/main.wasm  .
RUN cat $(go env GOROOT)/misc/wasm/wasm_exec.js > ./public/wasm_exec.js

# learning-golang-wasm.go

🫰🫰🫰 Go言語でWebAssemblyを学ぶためのリポジトリです！  

## 環境構築

DevContainerに入って、以下のコマンドを実行してください。  

```shell
### Go側
# JSでWebAssemblyを実行するためのファイルをコピー。
cat $(go env GOROOT)/misc/wasm/wasm_exec.js > ./public/wasm_exec.js
# WebAssemblyをビルドする。
GOOS=js GOARCH=wasm go build -o ./public/main.wasm  .

### JS側
# パッケージをインストールする。
npm install
# ローカルサーバーを起動する。
npm run dev
```

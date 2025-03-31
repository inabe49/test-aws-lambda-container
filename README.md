# test-aws-lambda-container

test for AWS Lambda with container

```
docker buildx build --platform linux/amd64 --output=type=docker -t inabe49/test-aws-lambda-container:latest .

docker manifest inspect inabe49/test-aws-lambda-container:latest
```

## 参考資料

- [Amazon ECR Public Gallery - AWS Lambda/provided](https://gallery.ecr.aws/lambda/provided)
- [Rust アプリのコンテナイメージを Lambda で動かしてみた #reinvent | DevelopersIO](https://dev.classmethod.jp/articles/rust-app-container-on-lambda-function/)

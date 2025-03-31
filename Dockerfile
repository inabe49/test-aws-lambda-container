FROM rust:1.85 AS builder

WORKDIR /home
COPY . /home/
RUN cargo build --release


FROM public.ecr.aws/lambda/provided:al2023-x86_64

COPY --from=builder /home/target/release/test-aws-lambda-container ${LAMBDA_RUNTIME_DIR}/bootstrap

# Bootstrap を置き換えているため CMD の指定は何でも良い。
CMD [ "lambda-handler" ]

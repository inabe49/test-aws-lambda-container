FROM rust:1.85 AS builder

WORKDIR /home
COPY . /home/
RUN cargo build --release


FROM public.ecr.aws/lambda/provided:al2023

COPY --from=builder /home/target/release/test-aws-lambda-container ${LAMBDA_RUNTIME_DIR}/bootstrap

ENTRYPOINT [ "lambda-handler" ]

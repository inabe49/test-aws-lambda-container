use aws_lambda_events::event::s3::S3Event;
use lambda_runtime::{run, service_fn, LambdaEvent};

async fn lambda_handler(_evt: LambdaEvent<S3Event>) -> Result<(), lambda_runtime::Error> {
    println!("Hello Lambda!");
    Ok(())
}

#[tokio::main]
async fn main() -> Result<(), lambda_runtime::Error> {
    run(service_fn(|request: LambdaEvent<S3Event>| {
        lambda_handler(request)
    }))
    .await
}
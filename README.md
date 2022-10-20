# Useful links

https://docs.aws.amazon.com/lambda/latest/dg/typescript-image.html
https://docs.aws.amazon.com/lambda/latest/dg/images-test.html

# Useful commands

## Invoke lambda inside runtime interface emulator

```bash
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'

# you need to stringify event
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '"{hello: \"world\", event: \"tonight\"}"'
```

## Build image

```bash
docker build -t test_lambda_function:latest -f dev.Dockerfile .

#or
./build_lambda.sh
```

## Spin up container

```bash
docker run -p 9000:8080 test_lambda_function:latest

#or
./run_lambda.sh
```

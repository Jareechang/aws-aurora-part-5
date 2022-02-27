# AWS Technical series (Integrate with AWS ECS)

Part 5 of the [AWS Aurora Technical Series](https://www.jerrychang.ca/writing/aws-aurora-technical-series).

To see the module, please visit [AWS Aurora Technical Series Part IV - Integrate with AWS ECS](https://www.jerrychang.ca/writing/aws-aurora-technical-series-integrate-with-aws-ecs)

## Getting started

1. Start local PostgreSQL

```sh
docker-compose up
```

**Note:** To re-reun with new changes (configuration, sql migrations), run - 

```
docker-compose up --build --force-recreate -V
```

`-V` - Forces volume remount

2. Add local PostgreSQL credentials to `.env.local`

**.env.local:**

```
DB_USERNAME=user
DB_HOST=0.0.0.0
DB_PASSWORD=test123
DB_PORT=5438
```

3. Start next.js local

```sh
yarn dev
```

## Infrastructure

```sh
export AWS_ACCESS_KEY_ID=<your-key>
export AWS_SECRET_ACCESS_KEY=<your-secret>
export AWS_DEFAULT_REGION=us-east-1
export TF_VAR_ip_address=<your-ip-address>

terraform init
terraform plan
terraform apply -auto-approve
```

# ecs-flask-example

Flask application running in AWS ECS Service deployed with the help of Terraform

## Run application locally

1. Install all necessary python packages

    ```shell
    pipenv install
    ```

2. Activate Python virtual environments

    ```shell
    pipenv shell
    ```

3. Run the application

    ```shell
    flask --app src/app run -h localhost -p 8080
    ```

4. Check the application
    * [http://localhost:8080]
    * [http://localhost:8080/health]

## Run application in a Docker container

1. Build the docker image

    ```shell
    docker build \
        -f docker/Dockerfile \
        -t 470936291902.dkr.ecr.eu-central-1.amazonaws.com/ecs-flask-example:latest \
        -t ecs-flask-example:latest \
        .
    ```

2. Run the docker container

   ```shell
   docker run --publish 8080:80 ecs-flask-example:latest

   ```

3. Check the application
    * [http://localhost:8080]
    * [http://localhost:8080/health]

## Push docker image to ECR

1. tag image properly

    ```shell
    docker tag ecs-flask-example:latest 470936291902.dkr.ecr.eu-central-1.amazonaws.com/ecs-flask-example:latest
    ```

2. Log in to ECR

    ```shell
    aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 470936291902.dkr.ecr.eu-central-1.amazonaws.com
    ```

3. Push docker image

    ```shell
    docker push 470936291902.dkr.ecr.eu-central-1.amazonaws.com/ecs-flask-example:latest
    ```

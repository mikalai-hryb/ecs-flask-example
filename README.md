# AWS ECS Service + Flask application example

## Run application locally

1. install all necessary python packages

    ```shell
    pipenv install
    ```

2. activate venv

    ```shell
    pipenv shell
    ```

3. run application

    ```shell
    flask --app src/app run -h localhost -p 8080
    ```

4. check application
    * [http://localhost:8080]
    * [http://localhost:8080/health]

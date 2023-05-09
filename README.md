# Laravel Docker Boilerplate

This is a boilerplate project for Laravel that's designed to run in Docker containers. It provides a simple and convenient way to set up a local development environment for your Laravel project using Apache as the web server.

## Prerequisites

Before you can use this boilerplate, you need to have the following software installed on your system:

- Docker
- Docker Compose

## Getting Started

To get started with this boilerplate, follow these steps:

1. Clone this repository to your local machine.
   ```sh
   git clone https://github.com/wyazdani/laravel-docker-boilerplate.git
   ```
2. In the root directory of the cloned repository, copy the `.env.example` file to `.env` and modify the values as required.
   ```sh
   cp .env.example .env
   ```
3. Start the Docker containers using Docker Compose.
   ```sh
   docker-compose up -d
   ```
4. To run Laravel migrations, execute the following command in your terminal:
   ```sh
   docker exec laravel php artisan migrate
   ```

## Usage

To use this boilerplate for your Laravel project with Apache, follow these steps:

1. Copy the `docker-compose.yml` file, the `php` directory, and the `.env.example` file to your Laravel project's root directory.
2. Modify the `.env` file in your Laravel project's root directory with your project-specific values.
3. Copy the `php.ini` file from the `php` directory to your Laravel project's root directory.
4. Run the Docker containers using Docker Compose.
   ```sh
   docker-compose up -d
   ```
5. To run Laravel migrations, execute the following command in your terminal:
   ```sh
   docker exec laravel php artisan migrate
   ```

## Roadmap

See the [open issues](https://github.com/wyazdani/laravel-docker-boilerplate/issues) for a list of proposed features (and known issues).

## Contributing

Contributions are welcome and appreciated! Please make sure to read the [contribution guidelines](CONTRIBUTING.md) before submitting a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

If you have any questions or comments about this project, you can reach out to the project owner at [email@example.com](mailto:email@example.com).

## Acknowledgements

- [Laravel](https://laravel.com/)
- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- [Apache HTTP Server](https://httpd.apache.org/)

# CodePush Server

A Strapi-based backend server for managing CodePush updates and configurations. This server provides a robust API for handling mobile app updates and configurations.

## 🚀 Features

- Built with Strapi v5.12.6
- PostgreSQL database support
- Docker containerization
- TypeScript support
- Environment-based configuration
- Secure authentication and authorization
- File upload capabilities

## 📋 Prerequisites

- Node.js >= 18.0.0
- Yarn package manager
- Docker and Docker Compose (for containerized deployment)
- PostgreSQL (for production)

## 🛠️ Installation

1. Clone the repository:
```bash
git clone https://github.com/ajedkrap/pdj-ota-server-demo.git
cd pdj-ota-server-demo
```

2. Install dependencies:
```bash
yarn install
```

3. Set up environment variables:
```bash
cp .envExample .env
```
Fill in the required environment variables in the `.env` file.

## 🔧 Development

### Local Development

1. Start the development server:
```bash
yarn develop
```

2. Build the project:
```bash
yarn build
```

### Docker Development

1. Start the development containers:
```bash
docker-compose -f docker-compose.dev.yaml up
```

## 🚀 Production Deployment

### Using Docker

1. Build and start the production containers:
```bash
./start-prod.sh
```

Or manually:
```bash
docker-compose -f docker-compose.prod.yaml up -d
```

### Environment Variables

Required environment variables:
- `ENV`: Environment (development/production)
- `HOST`: Server host
- `PORT`: Server port
- `APP_KEYS`: Application keys
- `API_TOKEN_SALT`: API token salt
- `ADMIN_JWT_SECRET`: Admin JWT secret
- `TRANSFER_TOKEN_SALT`: Transfer token salt
- `JWT_SECRET`: JWT secret
- Database configuration:
  - `DATABASE_CLIENT`
  - `DATABASE_HOST`
  - `DATABASE_PORT`
  - `DATABASE_NAME`
  - `DATABASE_USERNAME`
  - `DATABASE_PASSWORD`
  - `DATABASE_SSL`

## 📦 Project Structure

```
├── config/             # Strapi configuration
├── database/          # Database migrations and seeds
├── public/            # Public assets
├── src/              # Source code
│   ├── api/          # API endpoints
│   ├── components/   # Reusable components
│   ├── controllers/  # Route controllers
│   ├── middlewares/  # Custom middlewares
│   ├── policies/     # Route policies
│   ├── routes/       # Route definitions
│   └── services/     # Business logic
├── types/            # TypeScript type definitions
└── dist/             # Compiled output
```

## 🔐 Security

- JWT-based authentication
- Environment-based secrets
- Secure database connections
- Docker container isolation

## 📚 API Documentation

The API documentation is available at `/documentation` when running the server.

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 License

This project is private and confidential.

## 👥 Authors

- Transnovasi Team

## 🙏 Acknowledgments

- Strapi team for the amazing framework
- All contributors who have helped shape this project

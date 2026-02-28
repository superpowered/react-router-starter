# React Router & WordPress Starer

Spins up a simple React Router SPA with a wordpress backend. 
Small set of instuctions included for setting up and deploying to a raspberry pi on a local network

## Getting Started

### Installation

Install the dependencies:

```bash
yarn install
```

See initial-setup.md

### Development

Start the development server with HMR:

```bash
yarn run dev
```

Your application will be available at `http://localhost:5173`.

### Docker

To build and run using Docker:

```bash
docker compose up --build -d
```

WordPress API available at `http://localhost:81`.

## Building

Create a production build:

```bash
yarn run build
```

Once built (and docker compose run again)
production-like build with be available at `http://localhost`.


## Deployment

### Pi Deployment

```bash
yarn run pi:build:deploy
```

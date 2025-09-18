# express_demo

Simple Express.js demo that responds with "Hello World" on GET /

## Requirements

- Node.js (recommended 18+)
- Docker (for containerized run)

## Run locally

1. Install dependencies:
   npm install
2. Start the server:
   npm start
3. Open in browser:
   http://localhost:3000

## Docker (build & run)

Build the image:
docker build -t express_demo .

Run the container (maps port 3000):
docker run -d --name express_demo -p 3000:3000 express_demo

Check logs:
docker logs -f express_demo

Stop and remove:
docker stop express_demo && docker rm express_demo

Notes:

- In Docker Desktop you can view the running container under Containers/Apps and click the published port to open the app.
- The server listens on PORT (default 3000). You can override with the PORT env var when running the container.

License: MIT

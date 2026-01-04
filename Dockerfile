FROM python:3.11-slim

WORKDIR /app

# Copy site files
COPY . .

# Default port for Cloud Run is provided via $PORT
ENV PORT 8080
EXPOSE 8080

# Serve static files using Python's simple HTTP server bound to $PORT
CMD ["sh", "-c", "python -m http.server ${PORT}"]

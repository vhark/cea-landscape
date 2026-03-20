# Stage 1: Build the landscape
FROM ghcr.io/cncf/landscape2:latest AS builder

WORKDIR /app
COPY . .

RUN landscape2 build \
    --data-file data.yml \
    --settings-file settings.yml \
    --guide-file guide.yml \
    --logos-path logos \
    --cache-dir /tmp/landscape2-cache \
    --output-dir /app/build

# Stage 2: Serve with nginx
FROM nginx:alpine

COPY --from=builder /app/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

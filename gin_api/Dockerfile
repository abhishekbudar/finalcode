# Base image
FROM golang:1.19 as builder

# Set the working directory
WORKDIR /app

# Copy the files
COPY . .

# Install dependencies and build the binary
RUN go mod tidy && go build -o main .

# Final image
FROM alpine:latest
WORKDIR /root/
COPY --from=builder /app/main .
COPY config/conf.json /config/

# Expose port
EXPOSE 8080

# Run the application
CMD ["./main"]

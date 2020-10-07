# Build linux binary
GOOS=linux go build -o main main.go
# Create a zip file
zip deployment.zip main
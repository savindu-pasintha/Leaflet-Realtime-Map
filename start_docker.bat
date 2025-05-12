@echo off
REM Define variables
set IMAGE_NAME=nginx-leaflet-map-image
set CONTAINER_NAME=nginx-leaflet-map-image-container
set PORT=5055
set EXPOSE_PORT=80
set NETWORK=my_custom_network

echo Building Docker image...
docker build -t %IMAGE_NAME% .

echo Running Docker container...

docker run -d --name %CONTAINER_NAME% --network %NETWORK% -p %PORT%:%EXPOSE_PORT% %IMAGE_NAME%

echo Checking if the container is running...
docker ps -f "name=%CONTAINER_NAME%"

echo Docker container is up and running on port %PORT%!
pause

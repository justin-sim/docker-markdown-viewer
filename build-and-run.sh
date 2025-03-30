#!/bin/bash

# Build and run the Docker container for the Markdown viewer

# Set colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Starting Docker Markdown Viewer setup...${NC}"

# Check if Docker is installed
if ! command -v docker &> /dev/null
then
    echo "Docker is not installed. Please install Docker first."
    exit 1
fi

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null
then
    echo "Docker Compose is not installed. Please install Docker Compose first."
    exit 1
fi

# Create necessary files
echo -e "${YELLOW}Creating application files...${NC}"

# Check if files exist before overwriting
if [ -f "markdown-viewer.html" ]; then
    echo "markdown-viewer.html already exists. Overwrite? (y/n)"
    read answer
    if [ "$answer" != "y" ]; then
        echo "Skipping markdown-viewer.html"
    else
        cat > markdown-viewer.html << 'EOL'
<!DOCTYPE html>
<html lang="en">
<!-- Content from markdown-viewer.html would be here -->
<!-- For brevity, this is omitted in this example -->
</html>
EOL
        echo "markdown-viewer.html created."
    fi
else
    cat > markdown-viewer.html << 'EOL'
<!DOCTYPE html>
<html lang="en">
<!-- Content from markdown-viewer.html would be here -->
<!-- For brevity, this is omitted in this example -->
</html>
EOL
    echo "markdown-viewer.html created."
fi

# Build the Docker image
echo -e "${YELLOW}Building Docker image...${NC}"
docker-compose build

# Run the container
echo -e "${YELLOW}Starting container...${NC}"
docker-compose up -d

# Check if container is running
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Setup completed successfully!${NC}"
    echo -e "${GREEN}Markdown Viewer is now available at: http://localhost:8080${NC}"
else
    echo "Failed to start the container. Please check the logs for more information."
    exit 1
fi

# Display container information
echo -e "${YELLOW}Container information:${NC}"
docker-compose ps

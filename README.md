# Docker Markdown Viewer

An over-engineered Markdown viewer packaged as a Docker container.

## Features

- Real-time Markdown preview with syntax highlighting
- Dark mode toggle
- Auto-save functionality
- Multiple document management
- Export to HTML
- Responsive design

## Getting Started

### Prerequisites

- Docker and Docker Compose installed on your system

### Quick Start

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/docker-markdown-viewer.git
   cd docker-markdown-viewer
   ```

2. Build and start the container:
   ```bash
   docker-compose up -d
   ```

3. Access the Markdown viewer in your browser:
   ```
   http://localhost:8080
   ```

### Manual Docker Build

If you prefer not to use Docker Compose:

1. Build the Docker image:
   ```bash
   docker build -t markdown-viewer .
   ```

2. Run the container:
   ```bash
   docker run -d -p 8080:80 markdown-viewer
   ```

## Development

### Project Structure

- `markdown-viewer.html` - The main HTML file containing the Markdown viewer application
- `Dockerfile` - Instructions for building the Docker image
- `docker-compose.yml` - Configuration for Docker Compose deployment

### Customization

To modify the application:

1. Make changes to `markdown-viewer.html`
2. Rebuild the Docker image:
   ```bash
   docker-compose build
   # or
   docker build -t markdown-viewer .
   ```

3. Restart the container:
   ```bash
   docker-compose up -d
   # or
   docker run -d -p 8080:80 markdown-viewer
   ```

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- [Marked.js](https://marked.js.org/) for Markdown parsing
- [Highlight.js](https://highlightjs.org/) for code syntax highlighting
- [Nginx](https://nginx.org/) for serving the static content

## Roadmap

- Add Markdown file upload functionality
- Implement collaborative editing
- Add support for custom themes
- Add export to PDF functionality

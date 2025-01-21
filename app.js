const http = require('http');
const fs = require('fs');
const path = require('path');

// Create an HTTP server to serve the index.html file
const server = http.createServer((req, res) => {
    if (req.url === '/') {
        // Serve the index.html file from the working directory
        fs.readFile(path.join(__dirname, 'index.html'), (err, data) => {
            if (err) {
                res.writeHead(500, { 'Content-Type': 'text/plain' });
                res.end('Server Error');
                return;
            }
            res.writeHead(200, { 'Content-Type': 'text/html' });
            res.end(data);
        });
    } else {
        // Handle other routes with a 404
        res.writeHead(404, { 'Content-Type': 'text/plain' });
        res.end('Not Found');
    }
});

// Set the port to 3000 (can be overridden by environment variable)
const PORT = process.env.PORT || 3000;

// Start the server
server.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});

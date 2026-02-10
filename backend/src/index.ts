import express from 'express';
import http from 'http';
import { Server as SocketIO } from 'socket.io';
import { Client } from 'pg';

// Initialize Express
const app = express();
const server = http.createServer(app);
const io = new SocketIO(server);

// PostgreSQL Client Setup
const pgClient = new Client({
    user: 'your_db_user',
    host: 'localhost',
    database: 'your_db_name',
    password: 'your_db_password',
    port: 5432,
});

pgClient.connect()  // Connecting to PostgreSQL
    .then(() => console.log('PostgreSQL connected'))
    .catch(err => console.error('Connection error', err.stack));

// Socket.IO Setup
io.on('connection', (socket) => {
    console.log('A user connected');

    socket.on('disconnect', () => {
        console.log('User disconnected');
    });
});

// Basic route
app.get('/', (req, res) => {
    res.send('Hello World!');
});

const PORT = process.env.PORT || 3000;
server.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});

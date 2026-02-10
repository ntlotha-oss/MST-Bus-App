-- PostgreSQL Schema for Buses, Routes, Seats, Bookings, and Users tables

-- Table for Users
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table for Buses
CREATE TABLE buses (
    bus_id SERIAL PRIMARY KEY,
    bus_number VARCHAR(20) NOT NULL UNIQUE,
    capacity INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table for Routes
CREATE TABLE routes (
    route_id SERIAL PRIMARY KEY,
    start_location VARCHAR(100) NOT NULL,
    end_location VARCHAR(100) NOT NULL,
    distance DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table for Seats
CREATE TABLE seats (
    seat_id SERIAL PRIMARY KEY,
    bus_id INT REFERENCES buses(bus_id) ON DELETE CASCADE,
    seat_number VARCHAR(10) NOT NULL,
    is_booked BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table for Bookings
CREATE TABLE bookings (
    booking_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id) ON DELETE CASCADE,
    seat_id INT REFERENCES seats(seat_id) ON DELETE CASCADE,
    route_id INT REFERENCES routes(route_id) ON DELETE CASCADE,
    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

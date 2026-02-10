# API Documentation for MST Bus App

## Buses

### Get all buses
- **Endpoint:** `GET /api/buses`
- **Description:** Retrieve a list of all buses.

### Get bus by ID
- **Endpoint:** `GET /api/buses/{id}`
- **Description:** Retrieve details of a specific bus.

### Create a bus
- **Endpoint:** `POST /api/buses`
- **Description:** Create a new bus entry.
- **Request Body:** { "name": "string", "licensePlate": "string", "capacity": "integer" }

### Update a bus
- **Endpoint:** `PUT /api/buses/{id}`
- **Description:** Update an existing bus.
- **Request Body:** { "name": "string", "licensePlate": "string", "capacity": "integer" }

### Delete a bus
- **Endpoint:** `DELETE /api/buses/{id}`
- **Description:** Remove a bus from the system.

## Routes

### Get all routes
- **Endpoint:** `GET /api/routes`
- **Description:** Retrieve a list of all routes.

### Get route by ID
- **Endpoint:** `GET /api/routes/{id}`
- **Description:** Retrieve details of a specific route.

### Create a route
- **Endpoint:** `POST /api/routes`
- **Description:** Create a new route.
- **Request Body:** { "startLocation": "string", "endLocation": "string", "distance": "integer" }

### Update a route
- **Endpoint:** `PUT /api/routes/{id}`
- **Description:** Update an existing route.
- **Request Body:** { "startLocation": "string", "endLocation": "string", "distance": "integer" }

### Delete a route
- **Endpoint:** `DELETE /api/routes/{id}`
- **Description:** Remove a route from the system.

## Seats

### Get all seats for a bus
- **Endpoint:** `GET /api/buses/{id}/seats`
- **Description:** Retrieve a list of all seats for a specific bus.

### Book a seat
- **Endpoint:** `POST /api/buses/{id}/seats/{seatId}/book`
- **Description:** Book a specific seat on a bus.

## Bookings

### Get all bookings
- **Endpoint:** `GET /api/bookings`
- **Description:** Retrieve a list of all bookings.

### Get booking by ID
- **Endpoint:** `GET /api/bookings/{id}`
- **Description:** Retrieve details of a specific booking.

### Create a booking
- **Endpoint:** `POST /api/bookings`
- **Description:** Create a new booking.
- **Request Body:** { "busId": "string", "seatId": "string", "customerName": "string", "customerContact": "string" }

### Cancel a booking
- **Endpoint:** `DELETE /api/bookings/{id}`
- **Description:** Cancel a specific booking.

## WebSocket Events

### Real-time updates
- **Event:** `busUpdates`
- **Description:** Receive real-time updates on bus locations and status.

### Booking notifications
- **Event:** `bookingNotifications`
- **Description:** Receive notifications for booking confirmations and cancellations.

### Seat availability
- **Event:** `seatAvailability`
- **Description:** Get real-time updates on seat availability for buses.

---

*Document created on 2026-02-10 at 05:32:32 UTC*
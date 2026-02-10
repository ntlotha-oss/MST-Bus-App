# MST Bus App

## Project Structure

```
GOM/mst-bus-app
│
├── src/                # Source code directory
│   ├── components/     # React components
│   ├── pages/          # Page components
│   ├── services/       # API services
│   ├── styles/         # Styles and CSS files
│   └── utils/          # Utility functions
│
├── public/             # Public assets
│   ├── images/         # Images
│   └── index.html      # HTML entry point
│
├── tests/              # Test files
│
├── package.json        # Project metadata
├── README.md           # Project documentation
└── .gitignore          # Ignored files
```

## Setup Instructions

1. **Clone the Repository:**  
   Clone this repository to your local machine using:
   ```bash
   git clone https://github.com/GOM/mst-bus-app.git
   cd mst-bus-app
   ```

2. **Install Dependencies:**  
   Install the project dependencies with:
   ```bash
   npm install
   ```

3. **Run the Application:**  
   Start the development server with:
   ```bash
   npm start
   ```

4. **Build the Application:**  
   To build the app for production, run:
   ```bash
   npm run build
   ```

## Features
- **User Authentication:** Secure signup and login functionality.
- **Real-Time Bus Tracking:** View real-time locations of buses.
- **Bus Schedule:** Access schedules and routes of buses.
- **User Feedback:** Provide feedback and report issues.

## API Documentation

### Base URL
`https://api.mst-bus-app.com`

### Endpoints

- **GET /buses:**  
  Retrieve a list of all buses.
- **GET /buses/{id}:**  
  Retrieve details of a specific bus.
- **POST /users/login:**  
  Authenticate user and retrieve a token.
- **POST /feedback:**  
  Submit user feedback.

For detailed information on each endpoint, please refer to the [API Reference](https://api.mst-bus-app.com/docs).

## Contributing

Contributions are welcome! Please create issues and submit pull requests for improvements.
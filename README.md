# Student Profile API

A RESTful API for managing student profiles with full CRUD (Create, Read, Update, Delete) functionality. Built with Node.js, Express, and MongoDB.

## 📋 Project Overview

This is a Student Profile CRUD system that allows you to:
- ✅ **Create** student profiles
- ✅ **Read** (view) student profiles
- ✅ **Update** student profiles
- ✅ **Delete** student profiles

## 🛠️ Technologies Used

- **Node.js** - JavaScript runtime
- **Express.js** - Web application framework
- **MongoDB** - NoSQL database
- **Mongoose** - MongoDB object modeling
- **dotenv** - Environment variable management
- **CORS** - Cross-origin resource sharing
- **Docker** - Containerization platform

## 📁 Project Structure

```
student-profile-api/
├── controllers/      # Business logic for handling requests
├── models/          # Database schemas and models
├── routes/          # API route definitions
├── server.js        # Application entry point
├── package.json     # Project dependencies
└── README.md        # Project documentation
```

## 🚀 Getting Started

### Prerequisites

- Node.js (v14 or higher)
- MongoDB Atlas
- npm or yarn

### Installation

1. Clone the repository:
```bash
git clone https://github.com/SinmisolaE/student-profile-api.git
cd student-profile-api
```

2. Install dependencies:
```bash
npm install
```

3. Create a `.env` file in the root directory:
```env
PORT=3000
MONGODB_URI=mongodb://localhost:27017/student-profile-db
```

4. Start the server:
```bash
# Development mode with nodemon
npm run dev

# Production mode
npm start
```

The server will start on `http://localhost:3000`

### Running with Docker

For a containerized deployment:

1. Build the Docker image:
```bash
docker build -t student-profile-api .
```

2. Run the container:
```bash
docker run -p 5000:5000 --env-file .env student-profile-api
```

Or use Docker Compose (if you have a `docker-compose.yml` file):
```bash
docker-compose up
```

The containerized app will be available at `http://localhost:5000`

**Note:** The Dockerfile exposes port 5000, so make sure your `.env` file has `PORT=5000` when running with Docker.

## 📡 API Endpoints

### Base URL
```
http://localhost:3000/api
```

### Student Profile Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/students` | Get all student profiles |
| GET | `/students/:id` | Get a single student profile by ID |
| POST | `/students` | Create a new student profile |
| PUT | `/students/:id` | Update a student profile by ID |
| DELETE | `/students/:id` | Delete a student profile by ID |

### Request/Response Examples

#### Create a Student Profile
**POST** `/api/students`

Request Body:
```json
{
  "firstName": "John",
  "lastName": "Doe",
  "email": "john.doe@university.edu",
  "studentId": "STU001",
  "major": "Computer Science",
  "year": 3,
  "gpa": 3.75
}
```

Response (201 Created):
```json
{
  "_id": "507f1f77bcf86cd799439011",
  "firstName": "John",
  "lastName": "Doe",
  "email": "john.doe@university.edu",
  "studentId": "STU001",
  "major": "Computer Science",
  "year": 3,
  "gpa": 3.75,
  "createdAt": "2025-12-06T10:00:00.000Z",
  "updatedAt": "2025-12-06T10:00:00.000Z"
}
```

#### Get All Students
**GET** `/api/students`

Response (200 OK):
```json
[
  {
    "_id": "507f1f77bcf86cd799439011",
    "firstName": "John",
    "lastName": "Doe",
    "email": "john.doe@university.edu",
    "studentId": "STU001",
    "major": "Computer Science",
    "year": 3,
    "gpa": 3.75
  }
]
```

#### Get Single Student
**GET** `/api/students/:id`

Response (200 OK):
```json
{
  "_id": "507f1f77bcf86cd799439011",
  "firstName": "John",
  "lastName": "Doe",
  "email": "john.doe@university.edu",
  "studentId": "STU001",
  "major": "Computer Science",
  "year": 3,
  "gpa": 3.75
}
```

#### Update a Student Profile
**PUT** `/api/students/:id`

Request Body:
```json
{
  "year": 4,
  "gpa": 3.85
}
```

Response (200 OK):
```json
{
  "_id": "507f1f77bcf86cd799439011",
  "firstName": "John",
  "lastName": "Doe",
  "email": "john.doe@university.edu",
  "studentId": "STU001",
  "major": "Computer Science",
  "year": 4,
  "gpa": 3.85,
  "updatedAt": "2025-12-06T11:00:00.000Z"
}
```

#### Delete a Student Profile
**DELETE** `/api/students/:id`

Response (200 OK):
```json
{
  "message": "Student profile deleted successfully"
}
```

## 🧪 Testing the API

You can test the API using:
- **Postman** - Download from [postman.com](https://www.postman.com/)
- **Thunder Client** - VS Code extension
- **cURL** - Command line tool

### Example cURL Commands

```bash
# Get all students
curl http://localhost:3000/api/students

# Create a new student
curl -X POST http://localhost:3000/api/students \
  -H "Content-Type: application/json" \
  -d '{"firstName":"Jane","lastName":"Smith","email":"jane@university.edu","studentId":"STU002","major":"Mathematics","year":2,"gpa":3.9}'

# Update a student
curl -X PUT http://localhost:3000/api/students/507f1f77bcf86cd799439011 \
  -H "Content-Type: application/json" \
  -d '{"year":3}'

# Delete a student
curl -X DELETE http://localhost:3000/api/students/507f1f77bcf86cd799439011
```

## 📝 Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `PORT` | Server port number | 3000 |
| `MONGODB_URI` | MongoDB connection string | mongodb://localhost:27017/student-profile-db |

## 🔧 Development

### Running in Development Mode
```bash
npm run dev
```

This uses nodemon to automatically restart the server when files change.

## ⚠️ Error Handling

The API returns appropriate HTTP status codes:
- `200` - Success
- `201` - Created
- `400` - Bad Request
- `404` - Not Found
- `500` - Internal Server Error

## 🤝 Contributing

This is a university course project. Feel free to fork and experiment!

## 📄 License

ISC

## 👤 Author

University Web Development Course Project

## 📚 Learning Objectives

- Understanding RESTful API design principles
- Working with Node.js and Express.js
- Database operations with MongoDB and Mongoose
- Implementing CRUD operations
- API testing and documentation
- Error handling and validation

---

**Note:** This project is part of a Web Development course assignment focusing on building a complete CRUD system for student profile management.
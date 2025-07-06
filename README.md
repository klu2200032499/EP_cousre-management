<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>

  <h1>📘 EP Course Management</h1>
  <p>A web-based Course Management System built with Java and Spring Boot for managing courses, students, and enrollments.</p>

  <h2>🚀 Features</h2>
  <ul>
    <li>Course CRUD operations</li>
    <li>Student records management</li>
    <li>Optional authentication & role-based access</li>
    <li>Responsive UI using Thymeleaf</li>
  </ul>

  <h2>📂 Tech Stack</h2>
  <ul>
    <li><strong>Backend:</strong> Java 17+, Spring Boot</li>
    <li><strong>Database:</strong> H2 (default), MySQL/PostgreSQL supported</li>
    <li><strong>Frontend:</strong> Thymeleaf, Bootstrap/CSS</li>
    <li><strong>Build Tool:</strong> Maven</li>
    <li><strong>Optional:</strong> Spring Security</li>
  </ul>

  <h2>🛠 Setup & Installation</h2>
  <pre><code>git clone https://github.com/klu2200032499/EP_cousre-management.git
cd EP_cousre-management</code></pre>

  <p>Optional: Configure <code>application.properties</code> for MySQL:</p>
  <pre><code>spring.datasource.url=jdbc:mysql://localhost:3306/yourdb
spring.datasource.username=root
spring.datasource.password=secret
spring.jpa.hibernate.ddl-auto=update</code></pre>

  <p>Then build and run:</p>
  <pre><code>mvn clean install
mvn spring-boot:run</code></pre>

  <h2>🔗 UI Access</h2>
  <ul>
    <li><code>http://localhost:8080/</code> – Dashboard</li>
    <li><code>http://localhost:8080/courses</code> – Course page</li>
    <li><code>http://localhost:8080/students</code> – Student page</li>
  </ul>

  <h2>🔧 Project Structure</h2>
  <pre><code>src/
├── main/
│   ├── java/com/yourorg/
│   │   ├── controller/
│   │   ├── entity/
│   │   ├── repository/
│   │   ├── service/
│   │   └── security/
│   └── resources/
│       ├── templates/
│       ├── static/
│       └── application.properties
└── test/</code></pre>

  <h2>✅ Recommended Improvements</h2>
  <ul>
    <li>Add REST API endpoints</li>
    <li>Use MySQL or PostgreSQL in production</li>
    <li>Implement JWT security</li>
    <li>Add unit/integration tests</li>
    <li>Enhance UI with validation and pagination</li>
  </ul>

  <h2>📋 API Endpoints (Sample)</h2>
  <table>
    <thead>
      <tr>
        <th>Method</th>
        <th>Endpoint</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr><td>GET</td><td>/api/courses</td><td>List all courses</td></tr>
      <tr><td>GET</td><td>/api/courses/{id}</td><td>View a course</td></tr>
      <tr><td>POST</td><td>/api/courses</td><td>Create new course</td></tr>
      <tr><td>PUT</td><td>/api/courses/{id}</td><td>Update course</td></tr>
      <tr><td>DELETE</td><td>/api/courses/{id}</td><td>Delete course</td></tr>
      <tr><td>GET</td><td>/api/students</td><td>List students</td></tr>
    </tbody>
  </table>

  <h2>🧪 Testing</h2>
  <pre><code>mvn test</code></pre>

  <h2>📄 License</h2>
  <p>Distributed under the MIT License.</p>

  <h2>🤝 Contributing</h2>
  <ol>
    <li>Fork the repository</li>
    <li>Create a feature branch (<code>git checkout -b feature-name</code>)</li>
    <li>Commit your changes (<code>git commit -m "Add feature"</code>)</li>
    <li>Push and open a Pull Request</li>
  </ol>

  <h2>📬 Contact</h2>
  <p>Author: <strong>Your Name</strong><br>GitHub: <a href="https://github.com/klu2200032499">klu2200032499</a></p>

  <h2>✔ Commit Checklist</h2>
  <ul>
    <li>[ ] Dependencies updated</li>
    <li>[ ] Code style consistent</li>
    <li>[ ] Manual test passed</li>
    <li>[ ] Database migrations (if any)</li>
    <li>[ ] Documentation updated</li>
  </ul>

</body>
</html>


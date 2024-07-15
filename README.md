# Employee Registration Form

This project is a simple employee registration form using Java Servlet and JSP. The form collects user details and inserts them into a MySQL database.

## Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Folder Structure](#folder-structure)
- [CSS Styling](#css-styling)
- [License](#license)
- [Contact](#contact)

## Features

- User-friendly registration form.
- Form fields: Name, Email, Password, Branch.
- Data validation.
- Insertion of form data into a MySQL database.
- Displays success or error message upon form submission.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- JDK 8 or higher installed on your machine.
- Apache Tomcat server.
- MySQL database server.
- JDBC driver for MySQL.

## Installation

To install this project, follow these steps:

1. Clone the repository:
    ```sh
    git clone https://github.com/Praveenkolamuri/employee-registration.git
    ```

2. Set up the MySQL database:
    ```sql
    CREATE DATABASE demo-1;
    USE demo-1;
    CREATE TABLE employee (
        name VARCHAR(50),
        email VARCHAR(50),
        branch VARCHAR(50),
        password VARCHAR(50),
        rollno VARCHAR(50)
    );
    ```

3. Update the database connection details in the servlet code:
    ```java
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo-1","root","YourPassword");
    ```

4. Deploy the project on Apache Tomcat:
    - Place the WAR file or the project folder in the `webapps` directory of Tomcat.
    - Start the Tomcat server.

## Usage

1. Navigate to the registration form in your web browser:
    ```
    http://localhost:8080/your-project-name/
    ```

2. Fill in the form fields and submit the form.

3. The form data will be inserted into the MySQL database, and a success or error message will be displayed.

## Folder Structure

```
employee-registration/
├── src/
│   └── servlet/
│       └── employservlet.java
├── WebContent/
│   ├── index.html
│   ├── style.css
│   └── WEB-INF/
│       └── web.xml
└── README.md
```

## CSS Styling

The form is styled using CSS to provide a clean and modern user interface. The CSS file is included in the `index.html` file.

- The background image is set to a technology-themed image.
- Input fields, labels, and buttons are styled to enhance the user experience.
- Success and error messages are displayed using specific CSS classes.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more information.

## Contact

- LinkedIn: [Sai Praveen Kolamuri](https://www.linkedin.com/in/sai-praveen-kolamuri-7b449822a/)
- GitHub: [Praveenkolamuri](https://github.com/Praveenkolamuri)
- Instagram: [pra_veen2112](https://www.instagram.com/pra_veen2112?igsh=eXZpZnpvcHEzO)

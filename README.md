Employee Portal – Spring MVC + JDBC (JdbcTemplate + JSP)
**🔗 Project Repository**

https://github.com/srikanthjava91/vcube-javaissimple/tree/main

**🚀 Project Overview**
The Employee Portal is a Spring MVC web application that performs CRUD operations using Spring JDBC (JdbcTemplate) and displays data using JSP (Java Server Pages).

This project demonstrates a complete end-to-end web flow:

User → JSP (UI) → Controller → Service/DAO → Database → Response → JSP

🛠️ **Tech Stack**
Backend: Java, Spring Core, Spring MVC, Spring JDBC
Frontend (UI): JSP, HTML, CSS
Database: MySQL
Build Tool: Maven
Server: Apache Tomcat


**📂 Project Structure**
com.vcube.employee
 ├── controller        → Handles HTTP requests
 ├── dao               → JdbcTemplate DB operations
 ├── model             → Employee entity
 ├── config            → DataSource & Spring configuration
 └── webapp
      ├── WEB-INF
      │    ├── views   → JSP files
      │    └── web.xml
      └── static       → CSS/JS (if any)

      
**⚙️ Features**
➕ Add Employee (JSP Form)
📋 View All Employees (JSP Table)
✏️ Update Employee
❌ Delete Employee
🔍 Search Employee by ID
🗄️ Database Setup
CREATE DATABASE employee_portal;
USE employee_portal;

CREATE TABLE employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR(50),
    department VARCHAR(50),
    salary DOUBLE
);


**⚙️ DataSource Configuration (Java Config)**
@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.vcube.employee")
public class AppConfig {

    @Bean
    public DataSource dataSource() {
        DriverManagerDataSource ds = new DriverManagerDataSource();
        ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
        ds.setUrl("jdbc:mysql://localhost:3306/employee_portal");
        ds.setUsername("root");
        ds.setPassword("root");
        return ds;
    }

    @Bean
    public JdbcTemplate jdbcTemplate() {
        return new JdbcTemplate(dataSource());
    }

    @Bean
    public InternalResourceViewResolver viewResolver() {
        InternalResourceViewResolver vr = new InternalResourceViewResolver();
        vr.setPrefix("/WEB-INF/views/");
        vr.setSuffix(".jsp");
        return vr;
    }
}


**🌐 Application Flow (MVC)**

1️⃣ User interacts with JSP page (UI)
2️⃣ Request goes to Controller
3️⃣ Controller calls DAO (JdbcTemplate)
4️⃣ DAO interacts with Database
5️⃣ Response sent back to Controller
6️⃣ Controller returns data to JSP View

**🧠 Sample DAO Method**
public List<Employee> getAllEmployees() {
    String sql = "SELECT * FROM employee";
    return jdbcTemplate.query(sql, new EmployeeRowMapper());
}


**🧾 Sample JSP (View)**
<c:forEach var="emp" items="${employees}">
    <tr>
        <td>${emp.id}</td>
        <td>${emp.name}</td>
        <td>${emp.email}</td>
        <td>${emp.department}</td>
        <td>${emp.salary}</td>
    </tr>
</c:forEach>

**▶️ How to Run**
Clone the repository
Import as Maven Project
Configure MySQL credentials in DataSource
Deploy on Tomcat Server

**Open browser:**
http://localhost:8080/employee-portal/
🎯 Learning Outcomes
Spring MVC architecture (Controller → View → DAO)
JdbcTemplate with DataSource configuration
JSP-based UI development
Real-time CRUD web application flow
🔮 Future Enhancements
Convert JSP UI to React/Angular
Add REST APIs (Spring Boot)
Implement Spring Security (Login)
Add pagination & validation
👨‍💻 Author

Srikanth
Java Full Stack Trainer

💡 Note

**This project is ideal for:**
Beginners learning Spring MVC
Students preparing for interviews
Understanding real-time web application flow

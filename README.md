# Student Registration System (SRS)

A modern, Model-View-Controller (MVC) based web application developed for managing student records. This project demonstrates full-stack Java development, focusing on data persistence, server-side validation, and professional UI design.



## 🌟 Key Features
* **Dynamic Data Fetching:** Seamlessly retrieves and displays MySQL data using Java Servlets.
* **Modern UI/UX:** Clean, responsive design using custom Internal CSS for a "card-based" interface.
* **Duplicate Prevention:** Prevents multiple registrations with the same email using SQL Unique Constraints and custom Java exception handling.
* **Jakarta EE 11 Ready:** Fully compatible with Apache Tomcat 11 and the `jakarta.*` namespace.

## 🛠️ Tech Stack
| Layer | Technology |
| :--- | :--- |
| **Backend** | Java 17+, Jakarta Servlet 6.1 |
| **Frontend** | JSP (JavaServer Pages), CSS3, HTML5 |
| **Database** | MySQL 8.0 / 9.0 |
| **Server** | Apache Tomcat 11.0.x |
| **Build Tool** | Maven |

---

## ⚙️ Configuration (How to Run with Your Own DB)

To run this project on your local machine, you must configure the database settings to match your MySQL credentials.


### 1. Database Setup

**make sure to use your own database username and password**
First, create your database and the required table using the following SQL script:

```sql
CREATE DATABASE SRSdatabase;
USE SRSdatabase;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    year INT NOT NULL
);

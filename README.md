
# Library Management System (MySQL)

## Description
This project is a simple relational database for managing a library's books, members, and borrowing records. It uses MySQL to define a normalized schema with constraints and relationships.

---

## Features
- Manage books with details like title, author, ISBN, and publication year.
- Track library members and their contact information.
- Record book borrow and return events for each member.
- 

---

## How to Set Up

### Using MySQL CLI or Workbench:
1. Open MySQL or a GUI like MySQL Workbench.
2. Run the SQL script `library_management.sql`.

```bash
mysql -u your_username -p < library_management.sql
```

---

## Database Schema Overview

- **Members**: stores user details.
- **Books**: stores book information.
- **BorrowRecords**: links members and books with borrow/return data.

---

## Entity Relationship Diagram (ERD)

I used tools like [dbdiagram.io](https://dbdiagram.io) or MySQL Workbench to create my ERD.


---

## File Included
- `library_management.sql` – SQL script to create all tables and relationships.

---

## Author
Your Name  
[youremail@example.com](Matlhatse95kk@gmail.com)

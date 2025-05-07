
# Library Management System (MySQL)

## Description
This project defines a comprehensive MySQL database schema for managing a library system. It includes core entities like books, members, and borrowing records, and expands the functionality with categories, authors, publishers, fines, and staff.

---

## Features
- Track books, categorized by genre and linked to authors and publishers.
- Manage library members and staff separately.
- Record borrowing history and track late return fines.
- Normalize author and publisher data to reduce redundancy.

---

## The to Set Up

### By Using MySQL CLI or Workbench:
1. Open MySQL or a GUI like MySQL Workbench.
2. Run the SQL script `library_management.sql`.

```bash
mysql -u your_username -p < library_management.sql
```

---

## Database Schema Overview

### Tables
- **Members**: Library members with contact info.
- **Staff**: Library staff members with roles.
- **Categories**: Classifications for books.
- **Authors**: Author details.
- **Publishers**: Publisher contacts.
- **Books**: Linked to authors, publishers, and categories.
- **BorrowRecords**: Borrowing history for members.
- **Fines**: Penalties for late returns.

---

## Entity Relationship Diagram (ERD)

To generate your ERD in MySQL Workbench:
1. Open Workbench.
2. Go to `Database > Reverse Engineer`.
3. Select your database and import the schema.
4. View and export the EER Diagram.

---

## File Included
- `library_management.sql`: Full schema with relationships.

---

## Author
Your Name  
[youremail@example.com](matlhatse95kk@gmail.com)


# Task Manager & Library Management System (MySQL + FastAPI)

This repository contains two projects:

1. **Library Management System** (SQL only)
2. **Task Manager CRUD API** (MySQL + FastAPI)

---

## 1. Library Management System (SQL Only)

### Description:
A simple database to manage books, members, and borrow records for a library.

### How to Set Up:
1. Open MySQL or a GUI like MySQL Workbench.
2. Import the SQL file: `library_management.sql`.

### File:
- `library_management.sql` – contains all `CREATE TABLE` statements with constraints and relationships.

---

## 2. Task Manager CRUD API (FastAPI + MySQL)

### Description:
A web API for managing tasks and users, built using Python (FastAPI) and MySQL. Supports full CRUD operations.

### How to Run:
1. Create and configure a MySQL database.
2. Import `task_manager_schema.sql` into your database.
3. Update the `DATABASE_URL` in `task_manager_api.py` with your MySQL credentials.
4. Install dependencies:
   ```bash
   pip install fastapi sqlalchemy pymysql uvicorn
   ```
5. Run the app:
   ```bash
   uvicorn task_manager_api:app --reload
   ```

### Files:
- `task_manager_api.py` – FastAPI application code
- `task_manager_schema.sql` – SQL script to create the `TaskManager` database

---

## ERD (Entity Relationship Diagram)

You can create your ERD using [dbdiagram.io](https://dbdiagram.io) or MySQL Workbench.

_Sample Screenshot Placeholder or Link_

---

## Author
Your Name – [your.email@example.com](mailto:your.email@example.com)

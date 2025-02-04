# Periodic Table Database

This project is part of the **Relational Databases Certification** from freeCodeCamp. The goal is to create a Bash script that retrieves information about chemical elements from a PostgreSQL database.

## 📌 Project Overview

The project consists of three main parts:

1. **Fixing the Database**: Apply necessary corrections to the `periodic_table` database.
2. **Version Control**: Set up a Git repository and track changes.
3. **Creating the Bash Script**: Implement a script to query the database and display element details.

## ⚡ Features

-  Retrieve element data using **atomic number**, **symbol**, or **name**.
-  Display element properties such as atomic mass, type, and boiling/melting points.
-  Handle missing elements gracefully with an appropriate message.
-  Ensure correct database constraints and structure.

## 🛠️ Setup Instructions

### 1️⃣ Clone the Repository

```sh
git clone <your-repo-url>
cd periodic_table
```

### 2️⃣ Setup the Database

Connect to PostgreSQL and load the provided database:

```sh
psql --username=freecodecamp --dbname=periodic_table < periodic_table.sql
```

### 3️⃣ Run the Script

Make sure the script has execution permissions:

```sh
chmod +x element.sh
```

Run it with an atomic number, symbol, or element name:

```sh
./element.sh 1
./element.sh H
./element.sh Hydrogen
```

## 📜 Example Output

```
The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.
```

If the element is not found:

```
I could not find that element in the database.
```

## 🚀 Git Workflow

This project follows a structured commit message format:

-  `feat:` for new features.
-  `fix:` for bug fixes.
-  `chore:` for maintenance tasks.
-  `refactor:` for code improvements.

Example commit history:

```sh
git commit -m "feat: add element retrieval functionality"
git commit -m "fix: correct atomic mass formatting"
```

## 📝 License

This project is part of the freeCodeCamp curriculum and follows its licensing guidelines.

# Smart Flashcard System - PHP CodeIgniter 3

A smart flashcard backend system that auto-detects the subject from the question content.

## Features

- Add flashcards with subject detection (Physics, Chemistry, Biology, etc.)
- Get flashcards for a student with mixed subject variety
- Built using CodeIgniter 3, MySQL

---

## Installation

1. Clone this repo:
git clone https://github.com/kranthicodit/smart_flashcard.git

2. Place it in your XAMPP htdocs folder:
C:\xampp\htdocs\smart_flashcard

3. Create a MySQL database named:
smart_flashcard

4. Import the SQL file:
smart_flashcard.sql

5. Configure database:
Edit application/config/database.php and update:
'username' => 'root',
'password' => '',
'database' => 'smart_flashcard',

API Endpoints
1. POST /flashcard
Request:
json
{
  "student_id": "stu001",
  "question": "What is Newton's Second Law?",
  "answer": "Force equals mass times acceleration"
}
Response:
json
{
  "message": "Flashcard added successfully",
  "subject": "Physics"
}

2. GET /get-subject?student_id=stu001&limit=5
Response:

json
[
  {
    "question": "What is Newton's Second Law?",
    "answer": "Force equals mass times acceleration",
    "subject": "Physics"
  },
  ...
]

Test in Postman
Base URL: http://localhost/smart_flashcard

Use /flashcard and /get-subject endpoints.

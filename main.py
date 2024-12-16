import logging
from faker import Faker
import random
import psycopg2
from psycopg2 import DatabaseError

logging.basicConfig(level=logging.INFO)

fake = Faker()

conn = None
cur = None

try:
    # Підключення до бази даних
    conn = psycopg2.connect(host="localhost", database="university", user="postgres", password="567234")
    cur = conn.cursor()

    # Додавання груп
    for _ in range(3):
        cur.execute("INSERT INTO groups (name) VALUES (%s)", (fake.word(),))
        logging.info(f"Group added: {fake.word()}")

    # Додавання викладачів
    teacher_ids = []
    for _ in range(3):
        cur.execute("INSERT INTO teachers (fullname) VALUES (%s) RETURNING id", (fake.name(),))
        teacher_id = cur.fetchone()[0]
        teacher_ids.append(teacher_id)
        logging.info(f"Teacher added: {teacher_id}")

    # Додавання предметів із вказівкою викладача
    for teacher_id in teacher_ids:
        for _ in range(2):
            cur.execute("INSERT INTO subjects (name, teacher_id) VALUES (%s, %s)", (fake.word(), teacher_id))
            logging.info(f"Subject added for teacher {teacher_id}")

    # Додавання студентів і оцінок
    for group_id in range(1, 4):
        for _ in range(10):
            cur.execute("INSERT INTO students (fullname, group_id) VALUES (%s, %s) RETURNING id",
                        (fake.name(), group_id))
            student_id = cur.fetchone()[0]
            logging.info(f"Student added: {student_id}")
            for subject_id in range(1, 7):
                for _ in range(3):
                    cur.execute(
                        "INSERT INTO grades (student_id, subject_id, grade, grade_date) VALUES (%s, %s, %s, %s)",
                        (student_id, subject_id, random.randint(0, 100), fake.date_this_decade()))
                    logging.info(f"Grade added for student {student_id} in subject {subject_id}")

    # Збереження змін
    conn.commit()
except (DatabaseError, psycopg2.OperationalError) as e:
    logging.error(f"Unable to connect to database: {e}")
    if conn:
        conn.rollback()  # Відкат змін у випадку помилки
    raise RuntimeError(f"Unable to connect to database: {e}")
finally:
    if cur:
        cur.close()
    if conn:
        conn.close()

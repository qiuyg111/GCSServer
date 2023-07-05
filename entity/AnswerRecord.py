from datetime import datetime

from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class AnswerRecord(db.Model):
    __tablename__ = 'gcs_ans_record'

    answer_id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    user_id = db.Column(db.Integer, nullable=False)
    answer_time = db.Column(db.Integer, nullable=False)
    answer_date = db.Column(db.DateTime, nullable=False, default=datetime.utcnow)
    accuracy = db.Column(db.Integer, nullable=False)

    def __init__(self, user_id, answer_time, accuracy):
        self.user_id = user_id
        self.answer_time = answer_time
        self.accuracy = accuracy
        # Additional fields can be initialized here

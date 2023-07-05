from datetime import datetime

from flask import Flask
from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class QuizInfo(db.Model):
    __tablename__ = 'gcs_quiz_info'

    quiz_id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    quiz_info = db.Column(db.String(50), nullable=False)
    quiz_ans = db.Column(db.String(50), nullable=False)
    quiz_opt = db.Column(db.String(50), nullable=False)
    quiz_datetime = db.Column(db.DateTime, nullable=False, default=datetime.utcnow)
    quiz_status = db.Column(db.SmallInteger, nullable=False, default=1)
    quiz_delete_datetime = db.Column(db.DateTime, nullable=True)

    def __init__(self, quiz_info, quiz_ans, quiz_opt):
        self.quiz_info = quiz_info
        self.quiz_ans = quiz_ans
        self.quiz_opt = quiz_opt
        # Additional fields can be initialized here


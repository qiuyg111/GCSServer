from datetime import datetime

from flask import Flask
from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class User(db.Model):
    __tablename__ = 'gcs_user_info'

    user_id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    user_name = db.Column(db.String(50), nullable=True)
    user_profile = db.Column(db.String(50), nullable=True)
    user_point = db.Column(db.Integer, nullable=False, default=0)
    user_answer_count = db.Column(db.Integer, nullable=False, default=0)
    user_comment_num = db.Column(db.Integer, nullable=False, default=0)
    user_like_num = db.Column(db.Integer, nullable=False, default=0)
    user_register_datetime = db.Column(db.DateTime, nullable=False, default=datetime.utcnow)

    def __init__(self, user_name, user_profile):
        self.user_name = user_name
        self.user_profile = user_profile
        # Additional fields can be initialized here


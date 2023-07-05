from datetime import datetime

from flask import Flask
from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class UserSearchInfo(db.Model):
    __tablename__ = 'gcs_user_search_info'

    search_id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    search_type = db.Column(db.SmallInteger, nullable=False)
    search_content = db.Column(db.String(50), nullable=False)
    user_id = db.Column(db.Integer, nullable=False)
    garbage_id = db.Column(db.Integer, nullable=False)
    user_register_datetime = db.Column(db.DateTime, nullable=False, default=datetime.utcnow)

    def __init__(self, search_type, search_content, user_id, garbage_id):
        self.search_type = search_type
        self.search_content = search_content
        self.user_id = user_id
        self.garbage_id = garbage_id
        # Additional fields can be initialized here


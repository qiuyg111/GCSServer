from datetime import datetime

from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class NewsComment(db.Model):
    __tablename__ = 'gcs_news_comment'

    comment_id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    news_id = db.Column(db.Integer, nullable=False)
    user_id = db.Column(db.Integer, nullable=False)
    comment_content = db.Column(db.String(50), nullable=False)
    comment_like_num = db.Column(db.Integer, nullable=False, default=0)
    comment_datetime = db.Column(db.DateTime, nullable=False, default=datetime.utcnow)
    comment_status = db.Column(db.SmallInteger, nullable=False, default=1)
    comment_delete_datetime = db.Column(db.DateTime, nullable=True)

    def __init__(self, news_id, user_id, comment_content):
        self.news_id = news_id
        self.user_id = user_id
        self.comment_content = comment_content
        # Additional fields can be initialized here


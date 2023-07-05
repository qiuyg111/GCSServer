from datetime import datetime

from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class NewsInfo(db.Model):
    __tablename__ = 'gcs_news_info'

    news_id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    news_admin_id = db.Column(db.Integer, nullable=False)
    news_title = db.Column(db.String(50), nullable=False)
    news_content = db.Column(db.String(50, collation='utf8mb4_0900_ai_ci'), nullable=False)
    news_like_num = db.Column(db.Integer, nullable=False, default=0)
    news_comment_num = db.Column(db.Integer, nullable=False, default=0)
    news_create_datetime = db.Column(db.DateTime, nullable=False, default=datetime.utcnow)
    news_status = db.Column(db.SmallInteger, nullable=False, default=1)
    news_delete_datetime = db.Column(db.DateTime, nullable=True)

    def __init__(self, news_admin_id, news_title, news_content):
        self.news_admin_id = news_admin_id
        self.news_title = news_title
        self.news_content = news_content
        # Additional fields can be initialized here

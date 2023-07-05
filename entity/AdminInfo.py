from datetime import datetime

from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class AdminInfo(db.Model):
    __tablename__ = 'gcs_admin_info'

    admin_id = db.Column(db.Integer, primary_key=True, autoincrement=True, comment='管理员id')
    admin_account = db.Column(db.String(50), nullable=False)
    admin_password = db.Column(db.String(50), nullable=False)
    admin_name = db.Column(db.String(50, collation='utf8mb4_0900_ai_ci'))
    admin_profile = db.Column(db.String(50, collation='utf8mb4_0900_ai_ci'))
    admin_create_datetime = db.Column(db.DateTime, nullable=False, default=datetime.utcnow)
    admin_status = db.Column(db.Integer, nullable=False, default=1)
    admin_delete_timestamp = db.Column(db.DateTime)

    def __init__(self, admin_account, admin_password, admin_name=None, admin_profile=None):
        self.admin_account = admin_account
        self.admin_password = admin_password
        self.admin_name = admin_name
        self.admin_profile = admin_profile
        # Additional fields can be initialized here


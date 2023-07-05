from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class AuthorityInfo(db.Model):
    __tablename__ = 'gcs_authority_info'

    authority_id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    authority_name = db.Column(db.String(50), nullable=False)
    authority_info = db.Column(db.String(50, collation='utf8mb4_0900_ai_ci'), nullable=False, default='')

    def __init__(self, authority_name, authority_info):
        self.authority_name = authority_name
        self.authority_info = authority_info
        # Additional fields can be initialized here

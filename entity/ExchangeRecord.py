from datetime import datetime

from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class ExchangeRecord(db.Model):
    __tablename__ = 'gcs_exchange_record'

    exchange_record_id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    goods_id = db.Column(db.Integer, nullable=False)
    user_id = db.Column(db.Integer, nullable=False)
    exchange_timestape = db.Column(db.DateTime, nullable=False, default=datetime.utcnow)
    receive_location = db.Column(db.String(50), nullable=False)
    receive_phonenumber = db.Column(db.String(50), nullable=False)
    receive_name = db.Column(db.String(50), nullable=False)

    def __init__(self, goods_id, user_id, receive_location, receive_phonenumber, receive_name):
        self.goods_id = goods_id
        self.user_id = user_id
        self.receive_location = receive_location
        self.receive_phonenumber = receive_phonenumber
        self.receive_name = receive_name
        # Additional fields can be initialized here


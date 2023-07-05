from datetime import datetime

from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class GoodsInfo(db.Model):
    __tablename__ = 'gcs_goods_info'

    goods_id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    goods_point = db.Column(db.Integer, nullable=False)
    goods_name = db.Column(db.String(50, collation='utf8mb4_0900_ai_ci'), nullable=False)
    goods_info = db.Column(db.String(50, collation='utf8mb4_0900_ai_ci'), nullable=False, default='')
    goods_num = db.Column(db.Integer, nullable=False)
    goods_create_datetime = db.Column(db.DateTime, nullable=False, default=datetime.utcnow)
    goods_status = db.Column(db.Integer, nullable=False, default=1)
    goods_delete_datetime = db.Column(db.Integer, nullable=True)

    def __init__(self, goods_point, goods_name, goods_info, goods_num):
        self.goods_point = goods_point
        self.goods_name = goods_name
        self.goods_info = goods_info
        self.goods_num = goods_num
        # Additional fields can be initialized here


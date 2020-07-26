from flask_sqlalchemy import SQLAlchemy
from datetime import datetime

Db = SQLAlchemy()


class User(Db.Model):
    __tablename__ = 'users'
    username = Db.Column(Db.String(64), primary_key=True, unique=True, nullable=False)
    password = Db.Column(Db.String(128), nullable=False)
    creation_date = Db.Column(Db.DateTime, default = datetime.utcnow)

class Post(Db.Model):
    __tablename__ = 'posts'
    author = Db.Column(Db.String(1024), primary_key=True, nullable=False)
    content = Db.Column(Db.String(1024), nullable=False)
    creation_date = Db.Column(Db.DateTime, default = datetime.utcnow)
import pymysql
pymysql.install_as_MySQLdb()
from flask import Flask, render_template, request, session, redirect
from werkzeug.utils import secure_filename
from werkzeug.datastructures import  FileStorage
from flask_sqlalchemy import SQLAlchemy
from flask_mail import Mail
import json

with open('config.json', 'r') as c:
    params = json.load(c)["params"]

local_server = True
app = Flask(__name__)
app.secret_key = 'super-secret-key'
app.config.update(
    MAIL_SERVER = 'smtp.gmail.com',
    MAIL_PORT = '465',
    MAIL_USE_SSL = True,
    MAIL_USERNAME = params['gmail-user'],
    MAIL_PASSWORD=  params['gmail-password']
)
mail = Mail(app)
if(local_server):
    app.config['SQLALCHEMY_DATABASE_URI'] = params['local_uri']
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['prod_uri']

db = SQLAlchemy(app)

#name of class should be same as name of table in db
class Contact(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), nullable=False)
    email = db.Column(db.String(80), nullable=False)
    contact = db.Column(db.String(12), nullable=False)
    experience = db.Column(db.String(120), nullable=False)
    feedback = db.Column(db.String(120), nullable=True)
    service = db.Column(db.String(12), nullable=False)

@app.route("/", methods = ['GET', 'POST'])
def contact():
    if(request.method=='POST'):
        name = request.form.get('name')
        email = request.form.get('email')
        contact = request.form.get('contact')
        feedback = request.form.get('feedback')
        experience = request.form.get('experience')
        service = request.form.get('service')
        print(name,email,contact,feedback,experience,service)
        #Contact should be same as name of line 32
        entry = Contact(name=name, contact=contact,email = email, feedback=feedback, experience=experience, service=service )
        db.session.add(entry)
        db.session.commit()
        mail.send_message('New message from ' + name,
                          sender=email,
                          recipients = [params['gmail-user']],
                          body = name + "\n" + email + "\n" + contact + "\n" + feedback + "\n" + experience + "\n" + service      
                          )
        mail.send_message('New message from ' + name,
                          sender=params['gmail-user'],
                          recipients = [email],
                          body = "Thankyou for your feedback!"      
                          )
      
        return render_template('thankyou.html')
    return render_template('index.html', params=params)

app.run(debug=True)
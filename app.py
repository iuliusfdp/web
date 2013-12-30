# -*- coding: utf-8 -*-
import os
from functools import wraps
from sqlite3 import dbapi2 as sqlite3
from flask import (Flask,
                session,
                render_template,
                url_for,
                request,
                flash,
                redirect,
                g)

app = Flask(__name__)

app.config.update(dict(
    DATABASE='entry.db',
    DEBUG=True,
    SECRET_KEY=u'0moHo~#3CD`M/:6'
))

def connect_db():
    """Connects to the specific database."""
    rv = sqlite3.connect(app.config['DATABASE'])
    rv.row_factory = sqlite3.Row
    return rv

def init_db():
    """Creates the database tables."""
    with app.app_context():
        db = get_db()
        with app.open_resource('schema.sql', mode='r') as f:
            db.cursor().executescript(f.read())
        db.commit()

def get_db():
    """Opens a new database connection if there is none yet for the
    current application context.
    """
    if not hasattr(g, 'sqlite_db'):
        g.sqlite_db = connect_db()
    return g.sqlite_db

def close_db(error):
    """Closes the database again at the end of the request."""
    if hasattr(g, 'sqlite_db'):
        g.sqlite_db.close()


def logged_in(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if session.get('user') is not None:
            return f(*args, **kwargs)
        else:
            flash('Please log in first.', 'error')
            return redirect(url_for('login'))
    return decorated_function

@app.route('/ver')
def show_entries():
    db = get_db()
    cur = db.execute('select nombre from indices')
    entries = cur.fetchall()
    cur2 = db.execute('select region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco from pib7085')
    entries2 = cur2.fetchall()
    cur3 = db.execute('select region, ochentacinco, ochentaseis, ochentasiete, ochentaocho, ochentanueve, noventa, noventauno, noventados, noventatres, noventacuatro, noventacinco, noventaseis, noventasiete, noventaocho from pib8598')
    entries3 = cur3.fetchall()
    cur4 = db.execute('select region, noventaseis, noventasiete, noventaocho, noventanueve, dosmil, dosmiluno, dosmildos, dosmiltres, dosmilcuartro from pib9604')
    entries4 = cur4.fetchall()
    return render_template('show_entries.html', entries=entries, entries2=entries2, entries3=entries3, entries4=entries4)

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        user = request.form["user"]
        password = request.form["password"]
        db = get_db()
        result = db.execute('select name, user from user where user=? and pass = ?', 
                            [user, password])
        matches = result.fetchall()
        if len(matches) > 0: #The user and pass combination exits
            user_data = matches[0]
            session['user'] = user
            session['name'] = user_data[1]
            return redirect(url_for('show_tablas'))
        else:
            error = u"Usuario o contraseña incorrecto"
            return render_template('login.html', error=error)
        
    else:
        return render_template('login.html')

@app.route('/logout')
@logged_in
def logout():
    # remove the user from the session if it's there
    session.pop('user',None)
    return redirect(url_for('index'))

@app.route('/analisis')
@logged_in
def show_tablas():
    db = get_db()
    cur = db.execute('select region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco from pib7085')
    entries = cur.fetchall()
    cur2 = db.execute('select region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco from pib7085 where region="Tarapacá"')
    entries2 = cur2.fetchall()
    cur3 = db.execute('select region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco from pib7085 where region="Antofagasta"')
    entries3 = cur3.fetchall()
    cur4 = db.execute('select region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco from pib7085 where region="Atacama"')
    entries4 = cur4.fetchall()
    cur5 = db.execute('select region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco from pib7085 where region="Coquimbo"')
    entries5 = cur5.fetchall()
    cur6 = db.execute('select region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco from pib7085 where region="Valparaíso"')
    entries6 = cur6.fetchall()
    cur7 = db.execute('select region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco from pib7085 where region="OHiggins"')
    entries7 = cur7.fetchall()
    cur8 = db.execute('select region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco from pib7085 where region="Maule"')
    entries8 = cur8.fetchall()
    cur9 = db.execute('select region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco from pib7085 where region="Biobío"')
    entries9 = cur9.fetchall()
    cur10 = db.execute('select region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco from pib7085 where region="Araucanía"')
    entries10 = cur10.fetchall()
    cur11 = db.execute('select region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco from pib7085 where region="Los Lagos"')
    entries11 = cur11.fetchall()
    cur12 = db.execute('select region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco from pib7085 where region="Aysén"')
    entries12 = cur12.fetchall()
    cur13 = db.execute('select region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco from pib7085 where region="Magallanes"')
    entries13 = cur13.fetchall()
    cur14 = db.execute('select region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco from pib7085 where region="Metropolitana"')
    entries14 = cur14.fetchall()
    cur15 = db.execute('select region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco from pib7085 where region="No Regionalizado"')
    entries15 = cur15.fetchall()
    return render_template('show_tablas.html', entries=entries, entries2=entries2, entries3=entries3, entries4=entries4, entries5=entries5, entries6=entries6, entries7=entries7, entries8=entries8, entries9=entries9, entries10=entries10, entries11=entries11, entries12=entries12, entries13=entries13, entries14=entries14, entries15=entries15)

@app.route('/')
@app.route('/index')
def index():
    return render_template('index.html')



if __name__ == "__main__":
    app.run()

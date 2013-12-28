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

@app.route('/ver')
def show_entries():
    db = get_db()
    cur = db.execute('select nombre from indices')
    entries = cur.fetchall()
    cur2 = db.execute('select region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco from pib7085')
    entries2 = cur2.fetchall()
    cur3 = db.execute('select region, ochentacinco, ochentaseis, ochentasiete, ochentaocho, ochentanueve, noventa, noventauno, noventados, noventatres, noventacuatro, noventacinco, noventaseis, noventasiete, noventaocho from pib8598')
    entries3 = cur3.fetchall()
    return render_template('show_entries.html', entries=entries, entries2=entries2, entries3=entries3)

@app.route('/tabla')
def show_tablas():
    db = get_db()
    cur = db.execute('select region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco from pib7085')
    entries = cur.fetchall()
    return render_template('show_tablas.html', entries=entries)

@app.route('/')
@app.route('/index')
def index():
    return render_template('index.html')



if __name__ == "__main__":
    app.run()

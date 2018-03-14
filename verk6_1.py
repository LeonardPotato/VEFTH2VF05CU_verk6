from bottle import run, route, template,static_file, error, request

@route('/')
def index():
    return template('index')

@route('/lidura')
def lidura():
    return template('lidura')

@route('/order')
def order():
    fullname = request.query.fullname
    adress = request.query.adress
    email = request.query.email
    phone = request.query.phone
    pizzasize = int(request.query.pizzasize)
    skinka = request.query.skinka
    ananas = request.query.ananas
    pepperoni = request.query.pepperoni
    return template('order', fullname = fullname, adress = adress, email = email, phone = phone, pizzasize = pizzasize, skinka = skinka,ananas = ananas, pepperoni = pepperoni)










@route('/lidurb')
def lidurb():
    return template('lidurb')

@route('/new_user', method="POST")
def new_user():
    email = request.forms.email
    user = request.forms.user
    password = request.forms.password
    return template('new_user', email=email, user=user, password = password)

run()
<!doctype html>
<html lang="is">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>LidurA</title>
</head>
<body>

    <form action="/order" method="GET">

        <h1>Hver á þessa pizzu</h1>
        <label></label> <input type="text" name="fullname" placeholder="Fullt nafn">

        <label>-</label> <input type="text" name="adress" placeholder="Heimilisfang">
        <br>
        <label></label> <input type="email" name="email" placeholder="Netfang" pattern="\w+@\w+\.\w+">

        <label>-</label> <input type="text" name="phone" placeholder="Símanúmer" pattern="\d{7}" maxlength="7">

        <br>

        <h1>Pizzastærð</h1>
        <p>Hvaða stærð má bjóða þér?</p>
        <input type="radio" name="pizzasize" value="0"> <label>9 tommu - 1000</label>
        <br>
        <input type="radio" name="pizzasize" value="1"> <label>12 tommu - 1500</label>
        <br>
        <input type="radio" name="pizzasize" value="2"> <label>18 tommu - 2000</label>

        <br>

        <h1>Álegg?</h1>
        <p>Hvert álegg kostar 200kr.</p>
        <input type="checkbox" name="skinka"><label>Skinka</label>
        <br>
        <input type="checkbox" name="ananas"><label>Ananas</label>
        <br>
        <input type="checkbox" name="pepperoni"><label>Pepperoni</label>


        <br>

        <input type="Submit" value="Panta">
    </form>
</body>
</html>
<!doctype html>
<html lang="is">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Your order</title>
</head>
<body>
    <%
    pizzur = [
    {"size":9,"price":1000},
    {"size":12,"price":1500},
    {"size":18,"price":2000}
    ]
    %>



    <h2>Nafn: {{fullname}}</h2>
    <h2>Heimilisfang: {{adress}}</h2>
    <h2>Netfang: {{email}}</h2>
    <h2>Sími: {{phone}}</h2>

    <h2>Stærð: {{pizzur[pizzasize]["size"]}} tommur</h2>

    <%
    skinkaVal = ""
    ananasVal = ""
    pepperoniVal = ""
    extraCost = 0


    if skinka == 'on':
        skinkaVal = 'Skinka'
        extraCost = extraCost + 200
    end

    if ananas == 'on':
        ananasVal = 'Ananas'
        extraCost = extraCost + 200
    end

    if pepperoni == 'on':
        pepperoniVal = 'Pepperoni'
        extraCost = extraCost + 200
    end

    totalPrice = pizzur[pizzasize]["price"] + extraCost

    finalPrice = totalPrice * 1.25

    %>

    <h2>Álegg: {{skinkaVal}} {{ananasVal}} {{pepperoniVal}}</h2>

    <h2>Verð: {{finalPrice}}</h2>

</body>
</html>
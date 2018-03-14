<!doctype html>
<html lang="is">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>LidurB</title>
</head>
<body>
    <h1>Nýskráning</h1>

    <form action="/new_user" method="POST">
        <label for="email">Email</label>
        <input type="email" name="email" placeholder="Enter your email" pattern="\w+@\w+\.\w+">
        <br>
        <label for="username">Username</label>
        <input type="text" name="user" placeholder="Select your username" pattern="(?=.*[A-Z])(?=.*[a-z])(?!=.*[ ])[A-Za-z]{4,}">
        <br>
        <label for="password">Password</label>
        <input type="password" name="password" placeholder="Select your password" pattern="(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?!=.*[ ])[A-Za-z0-9]{4,}">
        <br>
        <input type="submit">
    </form>



</body>
</html>
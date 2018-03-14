<!doctype html>
<html lang="is">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>New User</title>
</head>
<body>
    <p><a href="/lidurb">Til baka</p>

    % newuser = {'email': email, 'username': user, 'pwd': password}

    <%
        import json
        with open('users.json', 'r', encoding='utf-8') as f:
            userdata = json.load(f)
    %>

    %print(userdata['users'])
    %if not any (x['username'] == newuser['username'] for x in userdata['users']):
    %    userdata['users'].append(newuser)
        <h3>Takk fyrir skráninguna</h3>
    %else:
        <h3>Notendanafn er nú þegar skráð.</h3>
    %end
    %print(userdata['users'])

    <%
        with open('users.json', 'w', encoding='utf-8') as f:
            json.dump(userdata, f, indent=4)

    %>
    <h3>Email: {{email}}</h3>
    <h3>User: {{user}}</h3>
    <h3>Password: {{password}}</h3>

</body>
</html>
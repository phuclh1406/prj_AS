
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <!-- Loding font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,700" rel="stylesheet">

        <!-- Custom Styles -->
        <link rel="stylesheet" type="text/css" href="./styles.css">

        <title>Login</title>
    </head>
    <body>

        <!-- Backgrounds -->

        <div id="login-bg" class="container-fluid">

            <div class="bg-img"></div>
            <div class="bg-color"></div>
        </div>

        <!-- End Backgrounds -->

        <div class="container" id="login">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="login">

                        <h1>Login</h1>

                        <!-- Loging form -->
                        <form action="MainController" method="POST">
                            <div class="form-group">
                                <input type="text" name="userID" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="userID">

                            </div>
                            <div class="form-group">
                                <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                            </div>

                            <div class="form-check">

                            </div>

                            <br>
                            <button type="submit" name="action" class="btn btn-lg btn-block btn-success" value="Login">Login</button>

                        </form>
                    </div>
                </div>
            </div>
        </div>


    </body>
</html>


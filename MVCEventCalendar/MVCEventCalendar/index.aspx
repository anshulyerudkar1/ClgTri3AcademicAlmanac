<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MVCEventCalendar.WebForm1" %>

<!DOCTYPE html>

<html>
    <head>
        <title>Home Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <style>
        @font-face {
        font-family: myFirstFont;
        src: url(sansation_light.woff);
        }
        
        h2.nav {
            font-family: myFirstFon;

        }
    </style>
    <body>

        <div class="container-fluid p-3 bg-dark text-white">

            <div class="row">
                <div class="col">
                    <!-- <img src="imac.png" alt="" width="120px" height="120px"> -->
                </div>
                <div class="col"><h4 class="display-4">Welcome</h4></div>

                <div class="col col-lg-2">
                    <div class="col col-lg-2">
                        <div class="dropdown">
                            <button class="btn btn-info btn-lg dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Login
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="slogin.aspx">Student</a>
                                <a class="dropdown-item" href="tlogin.aspx">Teacher</a>
                                <!-- <a class="dropdown-item" href="#">Something else here</a> -->
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="container-fluid">
            <img src="infrasturcture.jpg" alt="mitwpu" height="600px" width="1500px">

        </div>

    </body>
</html>
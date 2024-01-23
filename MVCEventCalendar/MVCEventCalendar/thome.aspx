<%@ Page Language="C#" AutoEventWireup="true" CodeFile="thome.aspx.cs" Inherits="MVCEventCalendar.thome" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Teacher Home</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    </head>
    <style>
        nav{
            background: rgb(131,58,180);
            background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(29,161,144,1) 0%, rgba(186,237,174,1) 80%, rgba(154,196,85,1) 100%, rgba(17,107,3,1) 100%);
        }

        body{
            background: rgb(131,58,180);
            background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(170,184,149,1) 0%, rgba(137,223,143,1) 49%, rgba(150,209,191,1) 100%, rgba(17,107,3,1) 100%);
        }
    </style>
    <body>
        <form id="form1" runat="server">
        <div class="container-fluid">
            <h2 class="display-3">Academic Almanac</h2>
        </div>
        <nav class="navbar navbar-expand-md bg-dark navbar-light">
            <!-- Brand -->
            <a class="navbar-brand" href="#"></a>
          
            <!-- Toggler/collapsibe Button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
              <span class="navbar-toggler-icon"></span>
            </button>
          
            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link" href="thome.aspx">Dashboard</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="subjects.aspx">Subjects</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Home/Index">Almanac</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="exam">Exam</a>
                </li>
                  <li class="nav-item">
                    &nbsp;</li>
              </ul>
            </div>
            <div class="col col-lg-1">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Logout" />
            </div>
          </nav>

            <div class="container mt-5 border">
                <div class="row">
                    <div class="col">
                        <asp:GridView ID="GridView1" runat="server" Width="50%" CssClass="table table-striped table-bordered table-hover"></asp:GridView>
                    </div>
                    <div class="col">
                        <img src="tri3.png" alt="mitwpu" height="100%" width="100%">

                    </div>
                </div>
            </div>


       

        </form>
                

    </body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="MVCEventCalendar.admin" %>

<!DOCTYPE html>

<html>
    <head>
        <title>AdMiN</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>

    <style>
        body{
            background: rgb(131,58,180);
            background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(255,45,38,1) 0%, rgba(29,1,1,1) 100%, rgba(154,196,85,1) 100%);
        }
    </style>
    <body>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <!-- Links -->
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link" href="index.aspx"><h2>Academic Almanac Admin Panel</h2></a>
                </li>
              </ul>            
        </nav>

        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header bg-dark text-light"><h5>Admin Login</h5></div><br>
                        <div class="card-body">
                            <form id="form1" runat="server">
                                <div class="form-group row">
                                    <label class="col-md-4 col-form-label text-md-right">Username</label>
                                    <div class="col-md-6">
                                        <asp:TextBox CssClass="form-control" ID="txtUsername" runat="server"></asp:TextBox>
                                       
                                    </div>
                                </div>
    
                                <div class="form-group row">
                                    <label class="col-md-4 col-form-label text-md-right">Password</label>
                                    <div class="col-md-6">
                                        <asp:TextBox CssClass="form-control" ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
    
                                <div class="form-group row">
                                    <div class="col-md-6 offset-md-4">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" name="remember"> Remember Me
                                            </label>
                                        </div>
                                    </div>
                                </div>
    
                                <div class="col-md-6 offset-md-4" >
                                    
                                    <asp:Button ID="btnlogin" CssClass="btn btn-success" runat="server" OnClick="btnlogin_Click" Text="login" />
                                   
                                    <br />
                                    <br />
                                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Incorrect Password Or username" Visible="False"></asp:Label>

                                   
                                    <br>
                                    <a href="#" class="btn btn-link">
                                        Forgot Your Password?
                                    </a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

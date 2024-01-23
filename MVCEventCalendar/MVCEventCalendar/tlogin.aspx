<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tlogin.aspx.cs" Inherits="MVCEventCalendar.tlogin" %>

<!DOCTYPE html>

<html>
    <head>
        <title>Teacher login</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>

    <style>
        body{
            /* background: rgb(131,58,180);
            background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(247,74,0,1) 0%, rgba(255,255,255,1) 54%, rgba(17,107,3,1) 100%, rgba(154,196,85,1) 100%); */
            background: rgb(131,58,180);
            background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(29,161,144,1) 0%, rgba(186,237,174,1) 80%, rgba(154,196,85,1) 100%, rgba(17,107,3,1) 100%);
        }
    </style>
    
    <body>
        <div class="container-fluid p-3 bg-dark text-white">
            <h2>Teacher</h2>
        </div>
        
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header"><h5>Login</h5></div>
                        <div class="card-body">
                            <center><img src="teacher.png" alt="" width="20%"></center><br>
                             <form id="form1" runat="server">
                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">E-Mail Address</label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" ></asp:TextBox>
                                        
                                    </div>
                                </div>
    
                                <div class="form-group row">
                                    <label for="password" class="col-md-4 col-form-label text-md-right">Password</label>
                                    <div class="col-md-6">
                                       <asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                                       
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
    
                                <div class="col-md-6 offset-md-4">
                                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click1" />
                                    <br>
                                    <a href="tforgotpass.aspx" class="btn btn-link">
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
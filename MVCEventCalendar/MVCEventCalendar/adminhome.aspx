<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="MVCEventCalendar.adminhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Home</title>
     <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body>
    
        <form id="form1" runat="server">
    
        <nav class="navbar navbar-expand-md bg-primary navbar-light">
            <!-- Brand -->
            <a class="navbar-brand" href="#"><h3></h3></a>
          
            <!-- Toggler/collapsibe Button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
              <span class="navbar-toggler-icon"></span>
            </button>
          
            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link" href="adminhome.aspx"><h2>Admin Panel</h2></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#"></a>
                </li>
              </ul>
              
                </div>
                <div class="col col-lg-1">
                    <a class="btn btn-outline-dark" href="admin.aspx" role="button">Logout</a>
                </div>
          </nav>

    <div class="container">
        <div class="row">
            <div class="col">
                <div class="container mt-3 border">
                    <h1>Students</h1>
                    <a class="btn btn-info" href="studentregister.aspx" role="button">Add a Student</a>
                </div>
            </div>

            <div class="col">
                <div class="container mt-3 border">
                    <h1>Teachers</h1>
                    <a class="btn btn-info" href="teacherregister.aspx" role="button">Add a Teacher</a>

                </div>
            </div>
        </div>
    </div>

            <div class="container mt-5 border">
                <div class="row">
                    <div class="col border">
                        List of Students
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                    </div>
                    <div class="col border">
                        List of Teachers
                        <asp:GridView ID="GridView2" runat="server"></asp:GridView>
                    </div>
                </div>
            </div>

        </form>

</body>
</html>

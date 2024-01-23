<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shome.aspx.cs" Inherits="MVCEventCalendar.shome" %>

<!DOCTYPE html>

<html>
    <%--<head>--%>
        <title>Student Home</title>
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
        background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(32,137,173,1) 0%, rgba(174,237,220,1) 57%, rgba(163,202,218,1) 100%, rgba(17,107,3,1) 100%);
      }
      body{
        background: rgb(131,58,180);
        background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(127,170,185,1) 0%, rgba(202,227,225,1) 49%, rgba(179,221,238,1) 100%, rgba(17,107,3,1) 100%);
       }
       
        </style>

    <body>
        <form id="form1" runat="server">
      <div class="container-fluid bg-white">
          <div class="row">
    <div class="col">
      <h3 class="display-3">Academic Almanac</h3>
    </div>
    <div class="col-md-auto">
       <!-- Variable width content-->
    </div>
    <div class="col col-lg-2">
        <a href="Profile.aspx">
            <img src="student.png" alt="" width="100">
        </a>
    </div>
  </div>
        
        <!-- <div class="col col-lg-1">
          <button type="button" class="btn btn-outline-dark">Logout</button>
        </div> -->
      </div>

        <nav class="navbar navbar-expand-md bg-dark navbar-light">
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
                  <a class="nav-link" href="shome.aspx">Dashboard</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="studsub.aspx">Subjects</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Home/Index">Almanac</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="studexam.aspx">Exam</a>
                </li>
              </ul>
              
            </div>
            <div class="col col-lg-1">
                <%--<asp:Button ID="Button1" class="btn btn-outline-dark" runat="server" Text="Logout" OnClick="Button1_Click" />--%>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="logout" />
            </div>
          </nav>
            <div class="container mt-5">
                <asp:GridView ID="GridView1" runat="server" Width="50%" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="subjectid" HeaderText="Subject Id" />
                        <asp:BoundField DataField="subjectname" HeaderText="Subject Name" />
                        <asp:BoundField DataField="subjectcode" HeaderText="Subject Code" />
                        <asp:BoundField DataField="subjectTeacher" HeaderText="Subject Teacher" />
                    </Columns>

            </asp:GridView>
            </div>
            
        </form>
    </body>
</html>

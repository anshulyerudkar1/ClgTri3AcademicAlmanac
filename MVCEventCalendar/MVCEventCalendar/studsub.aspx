<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studsub.aspx.cs" Inherits="MVCEventCalendar.studsub" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
              <button type="button" class="btn btn-outline-dark">Logout</button>
            </div>
          </nav>

        <div class="container">
            <form id="form1" runat="server">
                <br />

                <br />
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CaptionAlign="Left" CellPadding="3" CellSpacing="2" HorizontalAlign="Center">
                         <Columns>
                             <asp:BoundField DataField="subjectid" HeaderText="Subject  Id" />
                             <asp:BoundField DataField="subjectname" HeaderText="Subject Name" />
                             <asp:BoundField DataField="subjectcode" HeaderText="Subject Code" />
                             <asp:BoundField DataField="subjectTeacher" HeaderText="Subject Teacher" />
                         </Columns>
                         <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                         <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                         <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                         <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                         <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                         <SortedAscendingCellStyle BackColor="#FFF1D4" />
                         <SortedAscendingHeaderStyle BackColor="#B95C30" />
                         <SortedDescendingCellStyle BackColor="#F1E5CE" />
                         <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                
            </form>

         

        </div>
</body>
</html>

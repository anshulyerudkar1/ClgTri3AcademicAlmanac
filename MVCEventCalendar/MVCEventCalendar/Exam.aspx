<%@ Page Language="C#" AutoEventWireup="true" CodeFile="exam.aspx.cs" Inherits="MVCEventCalendar.exam" %>


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
            background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(29,161,144,1) 0%, rgba(186,237,174,1) 80%, rgba(154,196,85,1) 100%, rgba(17,107,3,1) 100%);
        }

        body{
            background: rgb(131,58,180);
            background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(170,184,149,1) 0%, rgba(137,223,143,1) 49%, rgba(150,209,191,1) 100%, rgba(17,107,3,1) 100%);
        }
        .auto-style1 {
            width: 29%;
            height: 230px;
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
                  <a class="nav-link" href="thome.aspx">Dashboard</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="subjects.aspx">Subjects</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Home/Index">Almanac</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Exam</a>
                </li>
              </ul>
            </div>
            
            <div class="col col-lg-1">
              <button type="button" class="btn btn-outline-dark">Logout</button>
            </div>
          </nav>

        <div class="container mt-5">
            <h1 class="display-2">Exam</h1>
            <div class="row">
                <div class="col">
                    
                    <form id="form1" runat="server">
                        <center>
                        <table class="auto-style1">
                            <tr>
                                <td>Exam Id :&nbsp;&nbsp;</td>
                                <td> 
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Subject Name :</td>
                                <td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Exam code :&nbsp;&nbsp;</td>
                                <td> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Exam Type:&nbsp;&nbsp;&nbsp;</td>
                                <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Exam Date:&nbsp;&nbsp;</td>
                                <td> <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
               

                <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" /></td>
                                <td>
               

                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Show Data" />
                                </td>
                            </tr>
                        </table>
                        </center>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
               &nbsp;<br />
                        &nbsp;
                <br />
                        &nbsp;&nbsp;
                <br />
                        &nbsp;
                <br />
                <br />
               

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               

                <br />
                </div>


                <div class="col">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CaptionAlign="Left" CellPadding="3" CellSpacing="2" HorizontalAlign="Center">
                         <Columns>
                             <asp:BoundField DataField="examid" HeaderText="Exam  Id" />
                             <asp:BoundField DataField="subjectname" HeaderText="Subject Name" />
                             <asp:BoundField DataField="examcode" HeaderText="Exam Code" />
                             <asp:BoundField DataField="examtype" HeaderText="Exam Type" />
                             <asp:BoundField DataField="examdate" HeaderText="Exam Date" />
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
                
                <br />
                </div>
            </div>
            

                     
                
            </form>

            <div class="container">



            </div>

        </div>
</body>
</html>
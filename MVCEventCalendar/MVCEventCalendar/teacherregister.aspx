<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacherregister.aspx.cs" Inherits="MVCEventCalendar.teacherregister" %>

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

    <style type="text/css">
        .auto-style1 {
            width: 134px;
        }
        .auto-style2 {
            width: 173px;
        }
        .auto-style3 {
            margin-bottom: 13px;
        }
        .auto-style4 {
            width: 134px;
            font-family: "Arial Black";
            font-size: x-large;
            color: #000000;
        }
        .auto-style5 {
            width: 26%;
            height: 226px;
        }
        .auto-style6 {
            width: 173px;
            text-align: center;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
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
                  <a class="nav-link" href="adminhome.aspx">Dashboard</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="subjects.aspx">Subjects</a>
                </li>
              </ul>
            </div>
            
            <div class="col col-lg-1">
              <button type="button" class="btn btn-outline-dark">Logout</button>
            </div>
          </nav>

    <form id="form1" runat="server">
        <div>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style1" style="font-family: 'Arial Black'; font-size: x-large; font-weight: normal; font-style: normal; color: #000000">ID</td>
                    <td class="auto-style2" style="font-family: 'Arial Black'; font-size: x-large; font-weight: normal; font-style: normal; color: #000000"><asp:TextBox ID="Txt1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="font-family: 'Arial Black'; font-size: x-large; font-weight: normal; font-style: normal; color: #000000">Name</td>
                    <td class="auto-style2" style="font-family: 'Arial Black'; font-size: x-large; font-weight: normal; font-style: normal; color: #000000"><asp:TextBox ID="Txt2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="font-family: 'Arial Black'; font-size: x-large; font-weight: normal; font-style: normal; color: #000000">Class</td>
                    <td class="auto-style6" style="font-family: 'Arial Black'; font-size: x-large; font-weight: normal; font-style: normal; color: #000000"><asp:TextBox ID="Txt3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="font-family: 'Arial Black'; font-size: x-large; font-weight: normal; font-style: normal; color: #000000">Post</td>
                    <td class="auto-style2" style="font-family: 'Arial Black'; font-size: x-large; font-weight: normal; font-style: normal; color: #000000"><asp:TextBox ID="Txt4" runat="server" CssClass="auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        Email</td>
                    <td class="auto-style2" style="font-family: 'Arial Black'; font-size: x-large; font-weight: normal; font-style: normal; color: #000000">
                        <asp:TextBox ID="Txt5" runat="server" CssClass="auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        Password</td>
                    <td class="auto-style2" style="font-family: 'Arial Black'; font-size: x-large; font-weight: normal; font-style: normal; color: #000000">
                        <asp:TextBox ID="Txt6" runat="server" CssClass="auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    </td>
                    <td class="auto-style2" style="font-family: 'Arial Black'; font-size: x-large; font-weight: normal; font-style: normal; color: #000000">
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Show Data" />
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <br />
        <br />
        <br />
        <div class="auto-style7">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" GridLines="None" HorizontalAlign="Center" CaptionAlign="Left" ForeColor="#333333" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <EditItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("teacherid") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("teacherid") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("teachername") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("teachername") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Class">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("teacherclass") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("teacherclass") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Post">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("teacherpost") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("teacherpost") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("teacheremail") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("teacheremail") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Password">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("teachpassword") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("teachpassword") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Operations">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Update">Update</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>    

            <br />
            <br />

        </div>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [teacher] WHERE [teacherid] = @teacherid" InsertCommand="INSERT INTO [teacher] ([teacherid], [teachername], [teacherclass], [teacherpost], [teacheremail], [tpass]) VALUES (@teacherid, @teachername, @teacherclass, @teacherpost, @teacheremail, @tpass)" SelectCommand="SELECT * FROM [teacher]" UpdateCommand="UPDATE [teacher] SET [teachername] = @teachername, [teacherclass] = @teacherclass, [teacherpost] = @teacherpost, [teacheremail] = @teacheremail, [tpass] = @tpass WHERE [teacherid] = @teacherid">
            <DeleteParameters>
                <asp:Parameter Name="teacherid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="teacherid" Type="Int32" />
                <asp:Parameter Name="teachername" Type="String" />
                <asp:Parameter Name="teacherclass" Type="String" />
                <asp:Parameter Name="teacherpost" Type="String" />
                <asp:Parameter Name="teacheremail" Type="String" />
                <asp:Parameter Name="tpass" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="teachername" Type="String" />
                <asp:Parameter Name="teacherclass" Type="String" />
                <asp:Parameter Name="teacherpost" Type="String" />
                <asp:Parameter Name="teacheremail" Type="String" />
                <asp:Parameter Name="tpass" Type="String" />
                <asp:Parameter Name="teacherid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>

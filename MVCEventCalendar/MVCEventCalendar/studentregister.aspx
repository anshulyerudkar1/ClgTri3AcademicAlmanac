<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentregister.aspx.cs" Inherits="MVCEventCalendar.studentregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 34px;
        }
      nav{
        background: rgb(131,58,180);
        background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(32,137,173,1) 0%, rgba(174,237,220,1) 57%, rgba(163,202,218,1) 100%, rgba(17,107,3,1) 100%);
      }
      body{
        background: rgb(131,58,180);
        background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(127,170,185,1) 0%, rgba(202,227,225,1) 49%, rgba(179,221,238,1) 100%, rgba(17,107,3,1) 100%);
       }
       
   
        .auto-style3 {
            text-align: center;
        }
       
   
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <table style="width: 100%;">
                <h1><caption class="c1"> Student Registration </caption></h1>
                <tr>
                    <td class="auto-style1">&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Txt1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">&nbsp;&nbsp;
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="c1">&nbsp;name&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Txt2" runat="server"></asp:TextBox>
                        <br />
                        email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Txt3" runat="server"></asp:TextBox>
                        <br />
                        class&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Txt4" runat="server"></asp:TextBox>
                        <br />
                        rollno&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Txt5" runat="server"></asp:TextBox>
                        <br />
                        password&nbsp;&nbsp; <asp:TextBox ID="Txt6" runat="server"></asp:TextBox>
                    &nbsp;<br />
                        year&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Txt7" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;&nbsp;
                    </td>
                    <td>&nbsp;</td>
                </tr>
                
                </tr>
                <tr>
                    <td class="c2" colspan="2">
                        &nbsp; <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />

                    &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="retrieve" runat="server" Text="Retrieve" OnClick="retrieve_Click" />

                    </td>
                </tr>
            </table>
        </div>
        
        <div>
            <br />
            <div class="auto-style3">
            <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" CellPadding="4" GridLines="None" ForeColor="#333333" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Student ID">
                        <EditItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("studentid") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("studentid") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("studentname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("studentname") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("studentemail") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("studentemail") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Class">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("studentclass") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("studentclass") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Roll No">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("rollno") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("rollno") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Password">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("spass") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("spass") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Year">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("year") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("year") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Operations">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Update">Update</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            </div>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [student] WHERE [studentid] = @studentid" InsertCommand="INSERT INTO [student] ([studentid], [studentname], [studentemail], [studentclass], [rollno], [spass], [year]) VALUES (@studentid, @studentname, @studentemail, @studentclass, @rollno, @spass, @year)" SelectCommand="SELECT * FROM [student]" UpdateCommand="UPDATE [student] SET [studentname] = @studentname, [studentemail] = @studentemail, [studentclass] = @studentclass, [rollno] = @rollno, [spass] = @spass, [year] = @year WHERE [studentid] = @studentid">
                <DeleteParameters>
                    <asp:Parameter Name="studentid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="studentid" Type="Int32" />
                    <asp:Parameter Name="studentname" Type="String" />
                    <asp:Parameter Name="studentemail" Type="String" />
                    <asp:Parameter Name="studentclass" Type="String" />
                    <asp:Parameter Name="rollno" Type="String" />
                    <asp:Parameter Name="spass" Type="String" />
                    <asp:Parameter Name="year" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="studentname" Type="String" />
                    <asp:Parameter Name="studentemail" Type="String" />
                    <asp:Parameter Name="studentclass" Type="String" />
                    <asp:Parameter Name="rollno" Type="String" />
                    <asp:Parameter Name="spass" Type="String" />
                    <asp:Parameter Name="year" Type="String" />
                    <asp:Parameter Name="studentid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

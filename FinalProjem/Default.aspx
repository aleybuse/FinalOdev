<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinalProjem._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    

    <div style="padding:15px" >


        <table class="nav-justified" style="height: 181px">
            <tr>
                <td colspan="2" style="height: 20px; font-size: x-large; font-weight: bold; color: #333333;">ASP.Net ile Personel Kayıt Sistemi</td>
            </tr>
            <tr>
                <td style="width: 500px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 500px">
                    <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Personel ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 500px; height: 22px">
                    <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Personel Ad"></asp:Label>
                </td>
                <td style="height: 22px">
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 500px">
                    <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Personel Soyad"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 500px; height: 23px">
                    <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Cinsiyet"></asp:Label>
                </td>
                <td style="height: 23px">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" RepeatDirection="Horizontal">
                        <asp:ListItem>Kadın</asp:ListItem>
                        <asp:ListItem>Erkek</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="width: 500px">
                    <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Şehir"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" Width="200px" >
                        <asp:ListItem>Ankara</asp:ListItem>
                        <asp:ListItem>İstanbul</asp:ListItem>
                        <asp:ListItem>İzmir</asp:ListItem>
                        <asp:ListItem>Eskişehir</asp:ListItem>
                        <asp:ListItem>Antalya</asp:ListItem>
                        <asp:ListItem>Sivas</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 500px">
                    <asp:Label ID="Label8" runat="server" Font-Size="Medium" Text="Telefon"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 500px">
                    <asp:Label ID="Label9" runat="server" Font-Size="Medium" Text="Mail"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 500px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 500px; height: 26px;"></td>
                <td style="height: 26px">
                    <asp:Button ID="Button1" runat="server" BackColor="#0099CC" Font-Bold="True" ForeColor="White" Text="Ekle" Width="100px" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" BackColor="#0099CC" Font-Bold="True" ForeColor="White" Text="Güncelle" Width="100px" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" BackColor="#0099CC" Font-Bold="True" ForeColor="White" Text="Sil" Width="100px" OnClick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td style="width: 500px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" Width="940px" Height="133px">
                        <HeaderStyle BackColor="#0099CC" ForeColor="White" />
                    </asp:GridView>
                </td>
            </tr>
        </table>

    </div>

</asp:Content>

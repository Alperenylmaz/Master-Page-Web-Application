<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmGiris.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style34 {
            width: 100%;
            height: 200px;
            margin-left:15px;
        }
        .auto-style37 {
            height: 49px;
        }
        .auto-style38 {
            width: 410px;
            background-color:white;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="uye_giris">
        <table class="auto-style34 auto-style38">
            <tr>
                <td class="uye_yazi_baslik" style="color:#FF5050; font-size:30px;font-weight:800;">Member Login</td>
                <td class="auto-style37"></td>
            </tr>
            <tr>
                <td class="auto-style38 uye_yazi" style="font-weight: 600">User Name:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style38 ">
                    <asp:TextBox ID="TextBox2" runat="server" Width="220px" Height="25px" Font-Size="Larger"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style38 uye_yazi" style="font-weight: 600">Password:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style38">
                    <asp:TextBox ID="TextBox3" runat="server" Width="220px" Height="25px" Font-Size="Large" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style38" ><a style="font-weight: 800; font-size: medium;" href="frmKayit.aspx" class="uye_yazi_1">New Member</a>&nbsp;&nbsp;&nbsp; <a style="font-weight: 800; font-size: medium;" href="frmSifremiunuttum.aspx" class="uye_yazi_1">Forgot Password</a></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style38">
                    <asp:Button ID="Button1" runat="server" Text="Login" Height="34px" Width="220px" OnClick="Button1_Click" Font-Size="X-Large" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>


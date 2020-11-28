<%@ Page Title="Complaint" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmSikayet.aspx.cs" Inherits="frmSikayet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style34 {
            width: 100%;
            padding-top:10px;
            padding-left:20px;
        }
        .auto-style35 {
        }
        .auto-style36 {
            width: 462px;
        }
        .auto-style37 {
            width: 462px;
            height: 35px;
        }
        .auto-style38 {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="no8272">

        <table class="auto-style34">
            <tr>
                <td class="auto-style35" colspan="2">
                    <asp:Label ID="Label1" runat="server" CssClass="uye_yazi_baslik" style="font-weight: 600; font-size: 20px;"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style36"><span class="uye_yazi" style="font-weight: 600; font-size: 20px;">Phone Number:</span></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="190px" MaxLength="11"></asp:TextBox>
                </td>
                <td class="auto-style38">
                    </td>
            </tr>
            <tr>
                <td class="auto-style36"><span class="uye_yazi" style="font-weight: 600; font-size: 20px;">Your Message:</span></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style36">
                    <asp:TextBox ID="TextBox3" runat="server" Height="122px" TextMode="MultiLine" Width="376px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style36">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Height="40px" Width="140px" Font-Size="X-Large" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>


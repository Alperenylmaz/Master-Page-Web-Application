<%@ Page Title="Forgot Password" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmSifremiunuttum.aspx.cs" Inherits="frmSifremiunuttum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style34 {
            margin-left:10px;
            margin-top:20px;
            height: 276px;
            width: 187px;
            background-color:white;
        }
        .auto-style35 {
            height: 29px;
        }
        .auto-style36 {
            height: 28px;
        }
        .auto-style37 {
            height: 27px;
        }
        .auto-style38 {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="n123">

         <table class="auto-style34">
             <tr>
                 <td><span class="uye_yazi_baslik" style="font-size: 25px; font-weight: 700; color: #FF5050;">Forgot Password</span></td>
             </tr>
             <tr>
                 <td class="auto-style37"><span class="uye_yazi" style="font-weight: 600; font-size: 20px;">Email:</span></td>
             </tr>
             <tr>
                 <td>
                     <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="190px"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style36"><span class="uye_yazi" style="font-weight: 600; font-size: 20px;">Phone Number:</span></td>
             </tr>
             <tr>
                 <td class="auto-style38">
                     <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="190px"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Button ID="Button1" runat="server" Text="Request My Password" Font-Size="Large" Height="28px" Width="196px" OnClick="Button1_Click" />
                 </td>
             </tr>
             <tr>
                 <td class="auto-style35">
                     <asp:Label ID="Label1" runat="server" Font-Size="Medium" style="font-weight: 600;"></asp:Label>
                 </td>
             </tr>
         </table>

     </div>

</asp:Content>


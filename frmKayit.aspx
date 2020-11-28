<%@ Page Title="Registration" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmKayit.aspx.cs" Inherits="frmKayit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style34 {
            width: 55%;
            height: 584px;
            background-color:white;
        }
        .auto-style35 {
            height: 26px;
        }
        .kayi_yazi2 {
        }
        .newStyle1 {
            font-family: arial, Helvetica, sans-serif;
        }
        .newStyle2 {
            font-family: arial, Helvetica, sans-serif;
            font-size: 15px;
        }
        .newStyle3 {
            font-family: arial, Helvetica, sans-serif;
            font-size: 12px;
        }
        .auto-style37 {
            height: 53px;
        }
        .auto-style38 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="frmkayit_div">
    <br />
    <table class="auto-style34">
        <tr>
            <td class="auto-style38"><span class="kayit_yazi" style="font-size: 25px; font-weight: 700; color: #FF5050;">Registration Form</span></td>
        </tr>
        <tr>
            <td><span class="kayit_yazi2" style="font-weight: 600; font-size: 20px;">Name Surname</span></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtAd" runat="server" Height="23px" Width="137px" style="font-weight: 600;" Font-Size="Medium"></asp:TextBox>&nbsp;<asp:TextBox ID="txtSoyad" Height="25px" runat="server" Width="137px" style="font-weight: 600;" Font-Size="Medium"></asp:TextBox>
            </td>
             
        </tr>
        <tr>
            <td><span class="kayit_yazi2" style="font-weight: 600; font-size:20px;">Email</span></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtEposta" runat="server" Height="23px" style="font-weight: 600;" AutoPostBack="true" OnTextChanged="cmdUpdate1_Click" Width="286px"></asp:TextBox>
                
                 <asp:Label ID="Label1" runat="server" Font-Size="Medium" style="font-weight: 600;"></asp:Label>
                
            </td>
            <td>
                
                 &nbsp;</td>
        </tr>
        <tr>
            <td><span class="kayit_yazi2"style="font-weight: 600; font-size: 20px;">User Name</span></td>
        </tr>
        <tr>
            <td><span class="kayit_yazi2"><asp:TextBox ID="txtKullaniciadi" style="font-weight: 600;" runat="server" Height="23px" AutoPostBack="true" OnTextChanged="cmdUpdate_Click" Width="286px" Font-Size="Medium"></asp:TextBox>
                </span>
                
                 <asp:Label ID="Label3" runat="server" Font-Size="Medium" style="font-weight: 600;"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td><span class="kayit_yazi2" style="font-weight: 600; font-size: 20px;">Password</span></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtSifre1" Height="23px" runat="server" style="font-weight: 600;" Width="286px" TextMode="Password" Font-Size="Medium"></asp:TextBox>              
            </td>
            <td>
                
                 &nbsp;</td>
        </tr>
        <tr>
            <td><span class="kayit_yazi2" style="font-weight: 600;font-size: 20px;">Password Verification</span></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtSifre2" runat="server" Height="23px" style="font-weight: 600;" Width="286px" TextMode="Password" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><span class="kayit_yazi2" style="font-weight: 600; font-size: 20px;">Birthday</span></td>
        </tr>
        <tr>
            <td class="auto-style38">
                <asp:DropDownList ID="dpDay" runat="server" Height="23px" Width="93px" style="font-weight: 600">
                    <asp:ListItem>Day</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="dpMonth" runat="server" Height="23px" Width="89px" style="font-weight: 600">
                    <asp:ListItem>Month</asp:ListItem>
                    <asp:ListItem Value="1">January</asp:ListItem>
                    <asp:ListItem Value="2">February</asp:ListItem>
                    <asp:ListItem Value="3">March</asp:ListItem>
                    <asp:ListItem Value="4">April</asp:ListItem>
                    <asp:ListItem Value="5">May</asp:ListItem>
                    <asp:ListItem Value="6">June</asp:ListItem>
                    <asp:ListItem Value="7">July</asp:ListItem>
                    <asp:ListItem Value="8">August</asp:ListItem>
                    <asp:ListItem Value="9">September</asp:ListItem>
                    <asp:ListItem Value="10">October</asp:ListItem>
                    <asp:ListItem Value="11">November</asp:ListItem>
                    <asp:ListItem Value="12">December</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="dpYear" runat="server" Height="23px" Width="100px" style="font-weight: 600">
                    <asp:ListItem>Year</asp:ListItem>
                    <asp:ListItem>1990</asp:ListItem>
                    <asp:ListItem>1991</asp:ListItem>
                    <asp:ListItem>1992</asp:ListItem>
                    <asp:ListItem>1993</asp:ListItem>
                    <asp:ListItem>1994</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem>
                    <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1997</asp:ListItem>
                    <asp:ListItem>1998</asp:ListItem>
                    <asp:ListItem>1999</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                    <asp:ListItem>2001</asp:ListItem>
                    <asp:ListItem>2002</asp:ListItem>
                    <asp:ListItem>2003</asp:ListItem>
                    <asp:ListItem>2004</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td><span class="kayit_yazi2" style="font-weight: 600; font-size: 20px;">Gender</span></td>
        </tr>
        <tr>
            <td>
                <asp:RadioButton ID="rdBay" runat="server" style="font-weight: 600" GroupName="Cinsiyet" Text="Male" />
                <asp:RadioButton ID="rdBayan" runat="server" style="font-weight: 600" GroupName="Cinsiyet" Text="Famale" />
            </td>
        </tr>
        <tr>
            <td><span class="kayit_yazi2" style="font-weight: 600; font-size: 20px;">Phone Number</span></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtCeptelefonu" runat="server" Height="23px" style="font-weight: 600;" Width="286px" MaxLength="11" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><span class="kayit_yazi2" style="font-weight: 600; font-size: 20px;">Location</span></td>
        </tr>
        <tr>
            <td class="auto-style35">
                <asp:DropDownList ID="DropDownList3" runat="server" Height="23px" style="font-weight: 600">
                    <asp:ListItem>Location</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style37">
                <asp:CheckBox ID="CheckBox1" runat="server" />
                <span class="newStyle3" style="font-weight: 300">I Agree Canon Terms of Service and Privacy Policy</span></td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/btn_kaydol.jpg" OnClick="ImageButton2_Click" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>


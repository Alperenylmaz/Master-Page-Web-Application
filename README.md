# Master-Page-Web-Application
Master Page Web Application using ASP.NET, CSS and C#

Used Technologies: C#, MSSQL, HTML, CSS, JavaScript.

In Anasayfa.aspx: User is transferred to the login page. In frmBilgi.aspx: The page that provides information about the user's operation. In frmDuzenle.aspx: The page makes update operation according to information’s that a user entered. In frmGiris.aspx: Makes log in according to the information received from the user login page. In frmKayit.aspx: Makes registration according to the data written by the user is creating a member record in the database. In fmSifremiUnuttum.aspx: The page that takes parameters from the user and write password into label according to that data. In frmSikayet.aspx: The page that takes the phone number and the message. Then adds it into the database. In frmSil.aspx: The page that delete the registry of a logged in user. In frmSon.aspx: The page that contains information about the latest status of the form that is attempted to be sent on the frmSikayet page. In MasterPage.master: The page that contains the structure of the website. The structure does not change according to the page. In StyleSheet.css: The page that contains all the style tags.

Database Modeling

In admin table: We kept information’s of users as shown. Here “konum” matches with “IL_Adi” in “il” table. In il table: We kept cities of Turkey and plate code of them. In kullanici table: We kept phone number and messages which come from users.

In this project, we also used OleDb database connector. From that connector, we made insertion, update, read and delete operations. To make it significant, we used sessions. At the same time, we used AutoPostBack operation which we covered in this course on frmGiris.aspx page to control if a username or an email were taken or not.
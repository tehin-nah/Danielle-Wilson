<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Quirks.ContactUs1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style>
               .mapouter{position:relative;text-align:right;height:500px;width:600px;}
                .gmap_canvas {overflow:hidden;background:none!important;height:500px;width:600px;}
                #contact {border-color:brown; margin:0 auto;}
                   #dvTbl{
       overflow: hidden;
        background-color: #333;
        position: fixed; 
        top: 0;
        width: 100%;
    

        body{
                background: url("contact.jpg) no-repeat center center fixed;

        background-size: 100% 100%;

        height: 100%;

        position: absolute; 

        width: 100%;

            }
           </style>
</head>
<body>
    <div id="contact">
    <form id="form1" runat="server">
        
            <asp:Label ID="Label1" runat="server" Text="Label">CONTACT US</asp:Label>
            <br />
            <br />
            Business Number : (876)533-6110<br />
            Email Address: <a href="mailto:w.danielle.ilson@gmail.com">w.danielle.ilson@gmail.com</a><br />
            <br /> 

       <asp:Label ID="Label2" runat="server" Text="Label">VISIT US</asp:Label>
    
       <div class="mapouter">
           <div class="gmap_canvas">
               <iframe width="600" height="500" id="gmap_canvas" 
               src="https://maps.google.com/maps?q=university%20of%20technology%20&t=&z=13&ie=UTF8&iwloc=&output=embed" 
               frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
              </div>
     </form>
     <div id="dvTbl">
      <asp:Table ID="TblMenu" runat="server" Width="100%">
          <asp:TableRow BackColor="white">
              <asp:TableCell><a href="Home.aspx">Home</a></asp:TableCell>
              <asp:TableCell><a href="Products.aspx">Shop</a></asp:TableCell>
              <asp:TableCell><a href="ContactUs.aspx">Contact Us</a></asp:TableCell>
              <asp:TableCell><a href="AboutUs.aspx">About Us</a></asp:TableCell>
              <asp:TableCell><a href="Registration.aspx">Sign Up</a></asp:TableCell>
            <asp:TableCell><a href="Cart.aspx"> <img src="cart.png" height="25px" width="25px"/></asp:TableCell>
          </asp:TableRow>
            
        </asp:Table>
            </div>
</body>
</html>

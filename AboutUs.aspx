<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Quirks.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
           #dvTbl{
       overflow: hidden;
        background-color: #333;
        position: fixed; 
        top: 0;
        width: 100%;
    }
           #about{
               font-variant-position:super;
               background-color:wheat;
           }
         body{
              background: url("background.jpg") no-repeat center center fixed;
                background-size: 100% 100%;

        height: 100%;

        position: absolute; 

        width: 100%;
    }
         h1{
             position: center;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
           <div id=" pic">
            <asp:Image ID="Image1" runat="server" ImageUrl="quirkyskirt.png" Width="100%" Height="705px"/>
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
    <div id="about">
       <h1>ABOUT US</h1>
        Welcome to Quirky Products, your number one source for all things 100% organic health powders and clays. We're dedicated to giving you the very best, with a focus on dependability, customer service and low prices.
Founded in 2018 by Danielle Wilson, Quirky Products has come a long way from its beginnings in a home office. When Ms. Wilson first started out, her passion for hair, skin and self care drove her to do intense research, and gave him the impetus to turn hard work and inspiration into to a booming online store. 
        We now serve customers all over Jamaica, and are thrilled to be a part of the eco-friendly wing of the beauty industry.

    We hope you enjoy our products as much as we enjoy offering them to you. If you have any questions or comments, please don't hesitate to contact us.
       <br /> <a href="ContactUs.aspx">Contact Us</a><br />
Sincerely,
Danielle Wilson, Ms, Foudner, CEO
        </div>
</body>
</html>

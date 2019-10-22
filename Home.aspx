<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Quirks.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

<style>
    body{
        background: url("images.jpg") no-repeat center center fixed;

        background-size: 100% 100%;

        height: 100%;

        position: absolute; 

        width: 100%;
    }

    #dvTbl{
       overflow: hidden;
        background-color: white;
        position: fixed; 
        top: 0;
        width: 100%;
    }

    #login{
         position: absolute;
  top: 50%;
  left: 50%;
  font-size: 50px;
  color: white;
  transform: translate(-50%,-50%);
  -ms-transform: translate(-50%,-50%);
  background-color: black;
  border: 1px solid black;
    }

</style>
</head>
<body >
    
   <!-- https://stackoverflow.com/questions/48678085/asp-net-master-page-and-child-page-with-bootstrap-not-utilising-entire-browser<form id="form1" runat="server">
       -->
        <div>
            <asp:Image ID="Image1" runat="server" ImageUrl="quirkyskirt.png" width="100%"/>
        </div>
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
        <!--<div id="dvMain">
        <asp:Menu ID="mnuMain" runat="server" OnMenuItemClick="Menu1_MenuItemClick">
            <Items>
                <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Home" Value="Home"></asp:MenuItem>
                <asp:MenuItem Text="Shop" Value="Shop" NavigateUrl="~/Products.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Contact Us" Value="Contact Us" NavigateUrl="~/ContactUs.aspx"></asp:MenuItem>
                <asp:MenuItem Text="About Us" Value="About Us" NavigateUrl="~/AboutUs.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Sign Up" Value="Sign Up" NavigateUrl="~/Registration.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
            </div>-->

        <!--<div id="login">
        <asp:Label ID="lblLogin" runat="server" Text="Enter your Email Address"></asp:Label>
        <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblLogin2" runat="server" Text="Enter your Password"></asp:Label>
        <asp:TextBox ID="txtLogin2" runat="server"></asp:TextBox>
         </div>-->

        <div>
            <h3>Featured Products</h3>
            <img src="bento.png" height="200px" width="200px"/> <a href="Products.aspx"></a>
            <img src="charcoal.jpg" /><a href="Products.aspx"></a>
        </div><br />
        <div>
           Welcome to Quirky Products, your number one source for all things 100% organic health powders and clays.
          <br /> <a href="AboutUs.aspx">Click to read more About Us</a>

            <br /><br /><a href="ContactUs.aspx">Click here to Contact Us</a>

        </div>
        
    </form>
</body>
</html>
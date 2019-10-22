<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Quirks.Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products</title>
   <script>
       function allowDrop(ev) {
           ev.preventDefault();
       }

       function drag(ev) {
           ev.dataTransfer.setData("text", ev.target.id);
       }

       function drop(ev) {
           ev.preventDefault();
           var data = ev.dataTransfer.getData("text");
           ev.target.appendChild(document.getElementById(data));
       }
</script>
    <style>
            #dvTbl{
       overflow: hidden;
        background-color: white;
        position: fixed; 
        top: 0;
        width: 100%;
    }

           div{
               position:relative;
           }
    </style>
</head>
<body>


    <form id="form1" runat="server">


&nbsp;
   <p>

       <div>
&nbsp;
<div  draggable="true" ondragstart="drag(event)">
    <img id="drag1" src="bento.jpg" draggable="true" ondragstart="drag(event)" width="100" height="120">
    <asp:Label ID="lblBento" runat="server" Text="Label">Bentonite Clay </asp:Label>
    <p>Bentonite clay is a natural clay with a fine, soft texture. It forms a paste when mixed with water. Some people use this paste for medical or cosmetic benefits, such as treating rashes and acne or as a hair mask.</p>
</div>
           <div  draggable="true" ondragstart="drag(event)">
               <img id="drag2" src="charcoal.jpg" width="100" height="120">
               <asp:Label ID="lblChar" runat="server" Text="Label">Charcoal </asp:Label>
               <p>Activated charcoal is a fine, odorless, black powder often used in emergency rooms to treat overdoses. Its toxin-absorbing properties have a wide range of medicinal and cosmetic uses.</p>
           </div>
           <div  draggable="true" ondragstart="drag(event)">
               <img id="drag3" src="henna.jpg" draggable="true" ondragstart="drag(event)" width="100" height="120">
               <asp:Label ID="lblHenna" runat="server" Text="Label">Henna </asp:Label>
               <p>The product is made from the pure powder of the henna plant and is 100% natural. It can be used as a hair dye, conditioner or for temporary henna tattoos. As a hair dye it lends the hair a beautiful shade of brown with orange nuances.</p>
               </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
    </div>
     <div id="dvTbl">
      <asp:Table ID="TblMenu" runat="server" Width="100%">
          <asp:TableRow BackColor="black">
              <asp:TableCell><a href="Home.aspx">Home</a></asp:TableCell>
              <asp:TableCell><a href="Products.aspx">Shop</a></asp:TableCell>
              <asp:TableCell><a href="ContactUs.aspx">Contact Us</a></asp:TableCell>
              <asp:TableCell><a href="AboutUs.aspx">About Us</a></asp:TableCell>
              <asp:TableCell><a href="Registration.aspx">Sign Up</a></asp:TableCell>
              <asp:TableCell><a href="Cart.aspx"> <img src="cart.png" height="25px" width="25px"/></asp:TableCell>
          </asp:TableRow>
            
        </asp:Table>
            </div>

        <p>
            &nbsp;</p>

       <a href="Cart.aspx"> <img src="cart.png" ondrop="drop(event)" ondragover="allowDrop(event)" /></a>
    </form>

</body>
</html>

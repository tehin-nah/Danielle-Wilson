<div class="header">
        <head>
            <script type = "text/javascript" src = https://use.fontawesome.com/1fa2e54b22.js> </script>
            <script type ="text/javascript" src =" https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

            <script type ="text/javascript">
                $(function(){

		$("#cart-items").slideUp();
		$(".cart").on("click", function () {
		$("#cart-items").slideToggle();
		});

		$("#items-basket").text("(" + ($("#list-item").children().length) + ")");

		
		$(".item").on("click", function () {
      $("#cart-items").slideDown();
     setTimeout(function(){
        $("#cart-items").slideUp();
     }, 2000)
			//add items to basket
			$(this).each(function () {
				var name = $(this).children(".item-detail").children("h4").text();
				var remove = "<button class='remove'> X </button>";
				var cena = "<span class='eachPrice'>" + (parseFloat($(this).children(".item-detail").children(".prices").children(".price").text())) + "</span>";
				$("#list-item").append("<li>" + name + "&#09; - &#09;" + cena + "$" + remove + "</li>");

				//number of items in basket
				$("#items-basket").text("(" + ($("#list-item").children().length) + ")");
				$("#items-basket").text();
        
	        //calculate total price
	        var totalPrice = 0;
		        $(".eachPrice").each(function (){ 
		          var cenaEach = parseFloat($(this).text());
		          totalPrice+=cenaEach;
		        });
		        $("#total-price").text(totalPrice + "$");
			});

			//remove items from basket
			$(".remove").on("click", function () {
				$(this).parent().remove();

		        var totalPrice = 0;
		        $(".eachPrice").each(function (){ 
		          var cenaEach = parseFloat($(this).text());
		          totalPrice+=cenaEach;
		        });
		        $("#total-price").text(totalPrice + "$");
				$("#items-basket").text("(" + ($("#list-item").children().length) + ")");
			});
		});
})
            </script>
            <style>
                          #dvTbl{
       overflow: hidden;
        background-color: white;
        position: fixed; 
        top: 0;
        width: 100%;
    }

            </style>
        </head>
        <link rel="stylesheet" href="~/site/css/site.css" />
    <div class="heading" style="background-image: url('site/images/back2.jpg'); height: 58px;" >
			<h1>Shopping Cart</h1>
		</div>
		<div class="cart">
			<i class="fa fa-shopping-basket fa-2x"></i>
      <i class="fa fa-caret-down"></i><br>
			<div class="total-text">
				<p>Items</p>
				<p id="items-basket"></p>
			</div>
		</div>

		<div id="cart-items">
			<ol id="list-item">
			</ol>

			<div class="total-text">
					<p>Total: </p>
			<p id="total-price"></p>
			</div>
		</div>



	</div>

	<div class="items-container" style="background-image: url('site/images/back2.jpg')" >
		<!-- Item 1 -->
		<div class="item">
            <img src="bento.png"  style="height: 397px; width: 280px" />
			&nbsp;<div class="overflow">
				<i class="fa fa-cart-plus fa-5x" id="basket"></i>
			</div>
			<div class="item-detail">
				<h4>Bentonite Clay</h4>
				<div class="prices">
					<p class="price">1500</p>
					<p>$</p>
				</div>
			</div>
		</div>

		<!-- Item 2 -->
		<div class="item">
			<img src="charcoal.jpg" style="height: 397px; width: 280px">
			<div class="overflow">
				<i class="fa fa-cart-plus fa-5x"></i>
			</div>
			<div class="item-detail">
				<h4>Charcoal Powder</h4>
				<div class="prices">
					<p class="price">1800</p>
					<p>$</p>
				</div>
			</div>
		</div>

		<!-- Item 3 -->
		<div class="item">
			<img src="henna.jpg" height: 449px; width: 273px; margin-top: 189px">
			<div class="overflow">
				<i class="fa fa-cart-plus fa-5x"></i>
			</div>
			<div class="item-detail">
				<h4>Henna Powder</h4>
				<div class="prices">
					<p class="price">2000</p>
					<p>$</p>
				</div>
			</div>
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
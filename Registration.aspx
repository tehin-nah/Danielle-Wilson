<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Quirks.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />

    <title>Sign Up</title>
    <style>
    body{
        background: url("register.png") no-repeat center center fixed;

        background-size: 100% 100%;

        height: 100%;

        position: absolute; 

        width: 100%;
    }
  #frmReg{
        float: inherit;
        background-color: white;
        margin-top:auto;
margin-right:inherit;
margin-bottom:auto;
margin-left:inherit;
padding: 5px;
width:350px;
border: 2px solid black;
position:absolute;
    }



</style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4">
                 <form id="frmReg" runat="server">
        
        <p>
            SIGN UP HERE</p>
        <asp:Label ID="lblFirstName" runat="server" Text="Label">First Name  </asp:Label> 
        <asp:TextBox ID="txtFirstName" runat="server" ></asp:TextBox>
     
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required field" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
     
        <p>
            <asp:Label ID="lblLastName" runat="server" Text="Label">Last Name  </asp:Label>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator id="RFV2"
                    ControlToValidate="txtLastName"
                    Display="Static"
                    ErrorMessage="Required Field"
                    runat="server"> </asp:RequiredFieldValidator>
     
        </p>
        <p>
        <asp:Label ID="lblEmail" runat="server" Text="Label">Email Address </asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator id="RFV3"
                    ControlToValidate="txtEmail"
                    Display="Static"
                    ErrorMessage="Required Field"
                    runat="server"
                  > </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                runat="server" 
                ControlToValidate="txtEmail"
                ErrorMessage="Invalid Email"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ></asp:RegularExpressionValidator>
     
        </p>
        <p>
             <asp:Label ID="lblDOB" runat="server" Text="Label" >Date of Birth DD/MM/YYY </asp:Label>
             <asp:TextBox ID="txtDOB" runat="server" OnTextChanged="txtDOB_TextChanged" onblur="ValidateDOB()"></asp:TextBox>
            <asp:RequiredFieldValidator id="RFV4"
                    ControlToValidate="txtDOB"
                    Display="Static"
                    ErrorMessage="Required Field"
                    runat="server"></asp:RequiredFieldValidator>
             <asp:Label ID="lblDOB2" runat="server" ></asp:Label>
    <script type="text/javascript">
        function ValidateDOB() {
            var lblDOB = document.getElementById("lblDOB2");

            var dateString = document.getElementById("txtDOB").value;
            var regex = /(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$/;


            if (regex.test(dateString)) {
                var parts = dateString.split("/");
                var dtDOB = new Date(parts[1] + "/" + parts[0] + "/" + parts[2]);
                var dtCurrent = new Date();
                lblDOB.innerHTML = "Eligibility 18 years ONLY."
                if (dtCurrent.getFullYear() - dtDOB.getFullYear() < 18) {
                    return false;
                }

                if (dtCurrent.getFullYear() - dtDOB.getFullYear() == 18) {

                    if (dtCurrent.getMonth() < dtDOB.getMonth()) {
                        return false;
                    }
                    if (dtCurrent.getMonth() == dtDOB.getMonth()) {
                        if (dtCurrent.getDate() < dtDOB.getDate()) {
                            return false;
                        }
                    }
                }
                lblDOB.innerHTML = "";
                return true;
            } else {
                lblDOB.innerHTML = "Enter date in dd/MM/yyyy format ONLY."
                return false;
            }
        }
</script>
        </p>
         <p>
             <asp:Label ID="lblNum" runat="server" Text="Label">Phone Number </asp:Label>
            <asp:TextBox ID="txtNum" runat="server" ></asp:TextBox>

             <asp:RegularExpressionValidator ID="REV1" runat="server" 
                 ErrorMessage="Invalid Number (Format: ###-###-####)" 
                 ControlToValidate="txtNum" 
                 ValidationExpression="^[2-9]\d{2}-\d{3}-\d{4}$">

             </asp:RegularExpressionValidator>

         </p>
         
        <p>
            <asp:Label ID="lblPass" runat="server" Text="Label"> Password </asp:Label>
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator id="RFV5"
                    ControlToValidate="txtPass"
                    Display="Static"
                    ErrorMessage="Required Field"
                    runat="server"> </asp:RequiredFieldValidator>
             
            <asp:regularexpressionvalidator id="RegularExpressionValidator3" display="Dynamic" 
            errormessage="Password must be 8-10 characters long</br> with at least one numeric character." 
                forecolor="Red" 
                validationexpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" 
                controltovalidate="txtPass" runat="server">
            </asp:regularexpressionvalidator>

     
            <br /> <br />
            <asp:Label ID="lblPass2" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="txtPass2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator id="RFV6"
                    ControlToValidate="txtPass2"
                    Display="Static"
                    ErrorMessage="Required Field"
                    runat="server"> </asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cmpPassword" 
                ControlToCompare= "txtPass"
                ControlToValidate="txtPass2"
                runat="server" 
                ErrorMessage="Password does not match"></asp:CompareValidator> 
     
        </p>
         
        <p> <asp:Button ID="btnRegister" runat="server" Text="Sign Up" OnClick="btnRegister_Click"/>
        </p>
    </form>
            </div>
            <div class="col-md-4">
            </div>
        </div>
   
       </div>

</body>
</html>

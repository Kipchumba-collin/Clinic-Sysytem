<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Dental.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Neema Dental System &amp; Register</title>


 <script type="text/javascript">


     //----------------------Function1-----------------------------//
     function validateEmail(Email)
     {
         if (Email == "") {
             alert("Email missing. Enter Email.");
             return false;
         }

         else if (Email.indexOf("@") == -1 || Email.indexOf(".com") == -1) {
             alert("Your email address seems incorrect. Please enter a new one.");
             return false;
         }

         else {
             var location = Email.indexOf("@");

             if (Email[0] == '@' || Email[location + 1] == '.') {
                 alert("Your email address seems incorrect. Please enter a new one.");
                 return false;
             }

             var emailPat = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
             var EmailmatchArray = Email.match(emailPat);

             if (EmailmatchArray == null) {
                 alert("Your email address seems incorrect. Please enter a new one.");
                 return false;
             }
         }

         return true;
     }


     //----------------------Function2-----------------------------//
     function validateS() 
     {
         var Name      = document.getElementById('<%=sName.ClientID %>').value;
         var Bdate     = document.getElementById('<%=sBirthDate.ClientID %>').value;
         var Email     = document.getElementById('<%=sEmail.ClientID %>').value;
         var phone     = document.getElementById('<%=Phone.ClientID %>').value;
         var pass      = document.getElementById('<%=sPassword.ClientID %>').value;
         var cpass     = document.getElementById('<%=scPassword.ClientID %>').value;
         
         /*now the validation code*/

         if (Name == "")
         {
             alert("Name missing. Enter Name.");
             return false;
         }


         var arrDbirth = Bdate.split("-");

         if (Bdate == "")
         {
             alert("Birth Date missing. Enter Birth Date.");
             return false;
         }

         else if ((Bdate == arrDbirth[0]) || (arrDbirth[0].length != 2) || arrDbirth[1].length != 2 || arrDbirth[2].length != 4 || !arrDbirth[0].match(/^[0-9]*$/) || !arrDbirth[1].match(/^[0-9]*$/) || !arrDbirth[2].match(/^[0-9]*$/) || Number(arrDbirth[0]) > 31 || Number(arrDbirth[1]) > 12)
         {
             alert("Birth Date Format Incorrect or out of Range.");
             return false;
         }


         if (!validateEmail(Email))
             return false;


         if (pass == "" || cpass == "")
         {
             alert("Password field is empty.");
             return false;
         }

         else if (pass != cpass)
         {
             alert("Passwords do not match.");
             return false;
         }
            

         if (phone.length != 10)
         {
             alert("Phone number should be of 10 digits.");
             return false;
         }


         if (Request.Form["Gender"] == null)
         {
             alert("Gender not selected.");
             return false;
         }
        
         return true;
     }





     //----------------------Function2-----------------------------//
     <%--function validateL() 
     {
         var Email        = document.getElementById('<%=loginEmail.ClientID %>').value;
         var Password     = document.getElementById('<%=loginPassword.ClientID %>').value;
         
         /*now the validation code*/

         if (!validateEmail(Email))
             return false;


         if (Password == "")
         {
             alert("Password missing. Enter Password.");
             return false;
         }

         return true;
     }--%>

     //------------------------------------------------------------------//
     //------------------------------------------------------------------//
     //------------------------------------------------------------------//

</script>
  
    
    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500"/>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="assets/css/form-elements.css"/>
    <link rel="stylesheet" href="assets/css/style.css"/>

    <!-- Javascript -->
    <script src="assets/js/jquery-1.11.1.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.backstretch.min.js"></script>
    <script src="assets/js/scripts.js"></script>

</head>



<body>

    <form id="SignUpPage" runat ="server"  >
				       
      
        <!-- Top content -->
             	                                
        <div class="top-content"> 
            <div class="inner-bg">
               <div class="container">
       
                        <!-- sign up form start honay laga hai :)-->
                           <div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(assets/vendors/staff8.jpg);">
					<span class="login100-form-title-1">
						Neema Dental Clinic 
					</span>
                    <h4 class="login100-form-title-1">Sign In</h4>
				</div>
         
                     </div>               
                           
			               
                                <%--<asp:TextBox ID="sName" runat="server" type="text" class="form-username form-control" placeholder="Name" required Style="height: 42px;"" ></asp:TextBox>--%>
                                <asp:TextBox CssClass="input100" runat="server" ID="sName" Placeholder="Enter your Name" type="text" required Style="height: 42px; width: 400px;" />
                                                       	                            
                            </div> 

				            <div class="form-group">
				                        	
                                
           	                        <asp:TextBox CssClass="input100" runat="server" ID="sBirthDate" Placeholder="Birth Date (dd-mm-yyyy)" type="text" required Style="height: 42px; width: 400px;" />     
                            </div>

				            <div class="form-group">
				            
           	                        <asp:TextBox CssClass="input100" runat="server" ID="sEmail" Placeholder="Email : person@example.com" type="text" required Style="height: 42px; width: 400px;" />     
                                
                            </div>

                            <div class="form-group">
				                        
                                    
                                <asp:TextBox CssClass="input100" runat="server" ID="sPassword" Placeholder="Enter New Password" type="text" required Style="height: 42px; width: 400px;" />     
                            </div>


                            <div class="form-group">
                                             				                        
                                 
                                <asp:TextBox CssClass="input100" runat="server" ID="scPassword" Placeholder="Confirm Password" type="text" required Style="height: 42px; width: 400px;" />     

                            </div>


                            <div class="form-group">
            
                                    
                                <asp:TextBox CssClass="input100" runat="server" ID="Phone" Placeholder="Phone number (11 Digits)" type="text" required Style="height: 42px; width: 400px;" />     

                            </div>
                                    
                            <div class="form-group">

                                 <input type="radio" name="Gender" value="M" id="test" checked="checked" />
                                  Male
                                 <input type="radio" name="Gender" value="F" />
                                  Female

                            </div>


                            <div class="form-group">
                                				                        
                                <asp:TextBox id="Address" placeholder ="Address" TextMode="multiline" Columns="40" Rows="10" runat="server" Height="75px" Width="410px" />
        
                            </div>

				            <asp:button Text ="SignUp"  runat="server" type="submit" class="btn btn-primary" OnClientClick="return validateS();" onclick="signupV"></asp:button>
				                    
                                    
                    <!-- sign up ends here -->
                                            
                               </div>
                           </div>
                        </div>
                    </div>
            

        <!-- Footer -->
        <footer>
        	<div class="container">
        		<div class="row">
        			
        			<div class="col-sm-8 col-sm-offset-2">
        				<div class="footer-border"></div>
        				<p>If you have any query, please feel free to contact us. <i class="fa fa-smile-o"></i></p>
                    </div>
        			
        		</div>
        	</div>
        </footer>

       
       
    </form>


</body>
</html>

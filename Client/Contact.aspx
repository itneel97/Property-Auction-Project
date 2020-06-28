<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Client_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="Index.aspx"><i class="fa fa-home home_1"></i></a> / <span>Contact Us</span></span>
		</div>
	</div>



    <div class="contact main-grid-border">
		<div class="container">
			<h2 class="w3-head text-center">Contact Us</h2>
			<section id="hire">    
				
<form runat="server" id="filldetails" class="submit">
                           <div class="field name-box">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Who are you???"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                   ErrorMessage="***" ControlToValidate="TextBox1" ForeColor="Red" 
                                   ValidationGroup="a1"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                                   runat="server" ErrorMessage="Ex: Abc" ControlToValidate="TextBox1" 
                                   ForeColor="Red" ValidationExpression="[a-zA-Z]*" ValidationGroup="a1"></asp:RegularExpressionValidator>
							<label>Name</label>
							<span class="ss-icon">check</span>
					  </div>
					  
					  <div class="field email-box">
                      <asp:TextBox ID="TextBox2" runat="server" placeholder="example@email.com" ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                   ErrorMessage="***" ControlToValidate="TextBox2" ForeColor="Red" 
                                   ValidationGroup="a1"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                                   runat="server" ErrorMessage="Ex: abc@gmail.com" ControlToValidate="TextBox2" 
                                   ForeColor="Red" 
                              ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                              ValidationGroup="a1"></asp:RegularExpressionValidator>
							<label>Email</label>
							<span class="ss-icon">check</span>
					  </div>
					  
					  <div class="field msg-box">
							<asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" placeholder="Your message goes here..." ></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                   ErrorMessage="***" ControlToValidate="TextBox3" ForeColor="Red" 
                                   ValidationGroup="a1"></asp:RequiredFieldValidator>
                                 
							<label>Your Msg</label>
							<span class="ss-icon">check</span>
					  </div>
                       
					 <asp:Button ID="Button1" runat="server" ValidationGroup="a1" Text="SEND" onclick="Button1_Click" class="button"></asp:Button>
                      
			
						
			    </form>

		<div class="clear"></div>
		
        
		<!-- JavaScript Includes -->
		<script src="js/jquery.knob.js"></script>

		<!-- jQuery File Upload Dependencies -->
		<script src="js/jquery.ui.widget.js"></script>
		<script src="js/jquery.fileupload.js"></script>
		
		<!-- Our main JS file -->
		<script src="js/script.js"></script>
        </div>
	</section>
			<script>
			    $('textarea').blur(function () {
			        $('#hire textarea').each(function () {
			            $this = $(this);
			            if (this.value != '') {
			                $this.addClass('focused');
			                $('textarea + label + span').css({ 'opacity': 1 });
			            } else {
			                $this.removeClass('focused');
			                $('textarea + label + span').css({ 'opacity': 0 });
			            }
			        });
			    });
			    $('#hire .field:first-child input').blur(function () {
			        $('#hire .field:first-child input').each(function () {
			            $this = $(this);
			            if (this.value != '') {
			                $this.addClass('focused');
			                $('.field:first-child input + label + span').css({ 'opacity': 1 });
			            } else {
			                $this.removeClass('focused');
			                $('.field:first-child input + label + span').css({ 'opacity': 0 });
			            }
			        });
			    });
			    $('#hire .field:nth-child(2) input').blur(function () {
			        $('#hire .field:nth-child(2) input').each(function () {
			            $this = $(this);
			            if (this.value != '') {
			                $this.addClass('focused');
			                $('.field:nth-child(2) input + label + span').css({ 'opacity': 1 });
			            } else {
			                $this.removeClass('focused');
			                $('.field:nth-child(2) input + label + span').css({ 'opacity': 0 });
			            }
			        });
			    });
			    $('#hire .field:nth-child(3) input').blur(function () {
			        $('#hire .field:nth-child(3) input').each(function () {
			            $this = $(this);
			            if (this.value != '') {
			                $this.addClass('focused');
			                $('.field:nth-child(3) input + label + span').css({ 'opacity': 1 });
			            } else {
			                $this.removeClass('focused');
			                $('.field:nth-child(3) input + label + span').css({ 'opacity': 0 });
			            }
			        });
			    });
			    $('#hire .field:nth-child(4) input').blur(function () {
			        $('#hire .field:nth-child(4) input').each(function () {
			            $this = $(this);
			            if (this.value != '') {
			                $this.addClass('focused');
			                $('.field:nth-child(4) input + label + span').css({ 'opacity': 1 });
			            } else {
			                $this.removeClass('focused');
			                $('.field:nth-child(4) input + label + span').css({ 'opacity': 0 });
			            }
			        });
			    });
			    //@ sourceURL=pen.js
		</script>    
		<script>
		    if (document.location.search.match(/type=embed/gi)) {
		        window.parent.postMessage("resize", "*");
		    }
	</script>
		</div>	
		<!-- address -->
		<div class="container">
			<div class="agileits-get-us">
				<ul>
					<li><i class="fa fa-home" aria-hidden="true"></i>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> </br>   </li>
                  
                    <li><i class="fa fa-map-marker" aria-hidden="true"></i>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></li>
                    <li><i class="fa fa-phone" aria-hidden="true"></i>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>     </br></br></br>  </li>
					<li><i class="fa fa-globe" aria-hidden="true"></i>
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>     </br></br></br>      </li>
					<li><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></a>  </br></br></br>   </li>
				</ul>
			</div>
		</div>
		<!-- //address -->
		<div class="map-w3layouts">
			<h3>Location</h3>
			<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7331.4524823542015!2d72.477536!3d23.253047!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x40d408a0261dba23!2sKalol+Institute+of+Technology+%26+Research+Centre!5e0!3m2!1sen!2sin!4v1515486603371"  allowfullscreen></iframe>		</div>
	</div>

</asp:Content>


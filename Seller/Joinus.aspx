<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/Client.master" AutoEventWireup="true" CodeFile="Joinus.aspx.cs" Inherits="Client_Joinus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="Index.aspx"><i class="fa fa-home home_1"></i></a> / <span>My Account</span></span>
		</div>
	</div>
<div class="submit-ad main-grid-border">
		<div class="container">
			<h2 class="w3-head">My Account</h2>




<div class="ads-grid">


				<div class="side-bar col-md-3">
					<div class="search-hotel">
					
					
                    <center> <asp:Image ID="Image2" runat="server"  style="border-radius: 100%; " Height="120px" width="150px"/> </center>
                  <br/>
                <center> <asp:Label ID="Label3" runat="server"  style="color:rgba(255, 76, 76, 0.86);font-size:25px" Text="Label"></asp:Label></center>
						
					
				</div>

                <div class="range">
               <center> <a href="Joinus.aspx" <asp:Label ID="Label7" runat="server"  style="color:#0099e5;font-size:20px" Text="My Account"></asp:Label></a> </center>
				</div>

				
				<div class="range">
               <center> <a href="Myproperty.aspx" <asp:Label ID="Label4" runat="server"  style="color:#0099e5;font-size:20px" Text="My Property"></asp:Label></a> </center>
				</div>

                <div class="range">
               <center> <a href="Mypropertyauction.aspx" <asp:Label ID="Label8" runat="server"  style="color:#0099e5;font-size:20px" Text="My Property Auction"></asp:Label></a> </center>
				</div>

                	<div class="range">
               <center> <a href="Addproperty.aspx" <asp:Label ID="Label5" runat="server"  style="color:#0099e5;font-size:20px" Text="Add Property"></asp:Label></a> </center>
			</div>

            <div class="range">
               <center> <a href="Result.aspx" <asp:Label ID="Label9" runat="server"  style="color:#0099e5;font-size:20px" Text="Result"></asp:Label></a> </center>
			</div>
				
                	<div class="range">
              <center>  <a href="Signout.aspx" <asp:Label ID="Label6" runat="server"  style="color:#0099e5;font-size:20px" Text="Sign Out"></asp:Label></a> </center>
				</div>


				</div>




            <div class="agileinfo-ads-display col-md-9">

					<div class="wrapper" style="padding-top:0px">					
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					 
					  <div class="post-ad-form">




				<form id="Form1" runat="server">



                 <label> Image <span>*</span></label>
               
				
					<div class="photos-upload-view">
                    
                    <asp:Image ID="Image1" Height="120px" Width="120px" runat="server" />
                    <asp:FileUpload ID="FileUpload2" runat="server" />
						</div>

						 <div class="clearfix"></div>
                         <br/>
                    <label> Type <span>*</span></label>
                    <section style="margin-top:11px;">
               <asp:Label ID="Label2" runat="server" Visible="true" Text="Label"></asp:Label>
                    </section>
					
                    <div class="clearfix"></div>
                    <br/>
                    <label>Name<span>*</span></label>
                    
					<asp:TextBox ID="TextBox1" class="phone"  placeholder="Enter Name" runat="server"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="***" ControlToValidate="TextBox1" 
                        ForeColor="Red" ValidationGroup="a1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Ex: Abc, aBc" ControlToValidate="TextBox1" ForeColor="Red" 
                        ValidationExpression="[a-zA-Z ]*" ValidationGroup="a1"></asp:RegularExpressionValidator>
                     


                    <div class="clearfix"></div>
                    <label>Address <span>*</span></label>
					<asp:TextBox ID="TextBox2" TextMode="MultiLine" class="phone" placeholder="Enter Address" runat="server"></asp:TextBox>
		<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="***" ControlToValidate="TextBox2" 
                        ForeColor="Red" ValidationGroup="a1"></asp:RequiredFieldValidator>



                     <div class="clearfix"></div>
                    <label>Contact No.<span>*</span></label>
					<asp:TextBox ID="TextBox3" class="phone"  placeholder="Enter Number" runat="server"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="***" ControlToValidate="TextBox3" 
                        ForeColor="Red" ValidationGroup="a1"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ErrorMessage="Ex:1234567890" ControlToValidate="TextBox3" ForeColor="Red" 
                        ValidationExpression="\d{10}" ValidationGroup="a1"></asp:RegularExpressionValidator>


                     <div class="clearfix"></div>
                    <label>Email<span>*</span></label>
					<asp:TextBox ID="TextBox4" class="phone" ReadOnly="true" placeholder="Enter Email-id" runat="server"></asp:TextBox>
					

                    

                        <div class="clearfix"></div>
                    <label>Password<span>*</span></label>
					<asp:TextBox ID="TextBox5" class="phone" placeholder="Enter Password" runat="server"></asp:TextBox>
				  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="***" ControlToValidate="TextBox5" 
                        ForeColor="Red" ValidationGroup="a1"></asp:RequiredFieldValidator>
                
                  
                <div class="clearfix"></div>
                    <label>City<span>*</span></label>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                        </asp:DropDownList>


               
               
                     <div class="clearfix"></div>
                    <label>Gender<span>*</span></label>
                    <asp:RadioButtonList
                        ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>


					<div class="clearfix"></div>
				
                        
               
                	
                    <div class="clearfix"></div>
               	<asp:Button ID="Button1" ValidationGroup="a1" runat="server" Text="Change" onclick="Button1_Click" />			
					
                <asp:HiddenField ID="HiddenField1" runat="server" />
                  <asp:HiddenField ID="HiddenField2" runat="server" />

                    
					<div class="clearfix"></div>
					
                <asp:Label ID="Label1" runat="server" Visible="false" Text="Label"></asp:Label>

						</form>
                      
						
						</div>



					</div>
				</div>
				</div>


			</div>
					
				
					</div>
			</div>


    
				<div class="clearfix"></div>






		

  
</asp:Content>


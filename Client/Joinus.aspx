<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.master" AutoEventWireup="true" CodeFile="Joinus.aspx.cs" Inherits="Client_Joinus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="Index.aspx"><i class="fa fa-home home_1"></i></a> / <span>Sign Up</span></span>
		</div>
	</div>

<div class="submit-ad main-grid-border">
		<div class="container">
			<h2 class="w3-head">Sign Up</h2>
			<div class="post-ad-form">
				<form runat="server">
					
                    <label>Select Type <span>*</span></label>
					 <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>---Select Type---</asp:ListItem>
                    <asp:ListItem>Buyer</asp:ListItem>
                    <asp:ListItem>Seller</asp:ListItem>
                </asp:DropDownList>

					
                    <div class="clearfix"></div>
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
					<asp:TextBox ID="TextBox4" class="phone" placeholder="Enter Email-id" runat="server"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="***" ControlToValidate="TextBox4" 
                        ForeColor="Red" ValidationGroup="a1"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" style="margin-left:950px" runat="server" 
                        ErrorMessage="Ex. abc@gmail.com" ControlToValidate="TextBox4" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="a1"></asp:RegularExpressionValidator>


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
				<div class="upload-ad-photos">
				<label>Upload Image</label>	
					<div class="photos-upload-view">
						</div>

						

						<div>
							<asp:FileUpload ID="FileUpload1" runat="server" />
						</div>

                        </div>
                        

                	
                    <div class="clearfix"></div>
                <p class="post-terms"> <asp:CheckBox ID="CheckBox1" runat="server" />   By clicking <strong>post Button</strong> you accept our <a href="Privacy.aspx" target="_blank">Terms of Use </a> and <a href="Privacy.aspx" target="_blank">Privacy Policy</a></p>
					<asp:Button ID="Button1"  runat="server" Text="Sign Up" onclick="Button1_Click" 
                        ValidationGroup="a1" />			
					
                    
                    
					<div class="clearfix"></div>
					
                <asp:Label ID="Label1" runat="server" Visible="false" Text="Label"></asp:Label>

						</form>

						
						</div>
					
				
					</div>
			</div>
		

  
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/Client.master" AutoEventWireup="true" CodeFile="Editproperty.aspx.cs" Inherits="Seller_Editproperty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="Index.aspx"><i class="fa fa-home home_1"></i></a> / <span>Edit Property</span></span>
		</div>
	</div>




    <div class="submit-ad main-grid-border">
		<div class="container">
			<h2 class="w3-head">Edit Property</h2>
			<div class="post-ad-form">
				<form id="Form1" runat="server">

                <div class="clearfix"></div>
                    <label>Category Name<span>*</span></label>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                        </asp:DropDownList>


                        <div class="clearfix"></div>
                    <label>Status<span>*</span></label>
                        <asp:DropDownList ID="DropDownList3" runat="server">
                        </asp:DropDownList>
                    <div class="clearfix"></div>
                   
                    <label>Property Name<span>*</span></label>
                    
					<asp:TextBox ID="TextBox1" class="phone"  placeholder="Enter Name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="***" ControlToValidate="TextBox1" 
                        ForeColor="Red" ValidationGroup="a1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Ex: Abc, aBc" ControlToValidate="TextBox1" ForeColor="Red" 
                        ValidationExpression="[a-zA-Z ]*" ValidationGroup="a1"></asp:RegularExpressionValidator>



                     <div class="clearfix"></div>

                   
                    <label>Property Details<span>*</span></label>
                    
					<asp:TextBox ID="TextBox6" class="phone"  placeholder="Enter Details" runat="server"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="***" ControlToValidate="TextBox6" 
                        ForeColor="Red" ValidationGroup="a1"></asp:RequiredFieldValidator>

                    <div class="clearfix"></div>
                    <label>Address <span>*</span></label>
					<asp:TextBox ID="TextBox2" TextMode="MultiLine" class="phone" placeholder="Enter Address" runat="server"></asp:TextBox>
		<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="***" ControlToValidate="TextBox2" 
                        ForeColor="Red" ValidationGroup="a1"></asp:RequiredFieldValidator>

                         <div class="clearfix"></div>
                    <label>City<span>*</span></label>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>


                     <div class="clearfix"></div>
                    <label>BasePrice<span>*</span></label>
					<asp:TextBox ID="TextBox3" class="phone" width="30%" placeholder="Enter Minimum Price" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="***" ControlToValidate="TextBox3" 
                        ForeColor="Red" ValidationGroup="a1"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ErrorMessage="Ex:5555555555" ControlToValidate="TextBox3" ForeColor="Red" 
                        ValidationExpression="\d{20}" ValidationGroup="a1"></asp:RegularExpressionValidator>

                     <div class="clearfix"></div>
                    <label>Expire Date<span>*</span></label>
					<asp:TextBox ID="TextBox4" class="phone" width="30%" TextMode="Date"  runat="server"></asp:TextBox>
               
                    <div class="clearfix"></div>

                      <label> Image <span>*</span></label>
                    <div class="photos-upload-view">
                     <asp:Image ID="Image1" Height="120px" Width="120px" runat="server" />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
						
                        </div>

						 

                	
                    <div class="clearfix"></div>
               	<asp:Button ID="Button1" runat="server"  ValidationGroup="a1" Text="Change" onclick="Button1_Click"/>			
					
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                <asp:Label ID="Label1" runat="server" Visible="false" Text="Label"></asp:Label>
                <div class="clearfix"></div>
						</form>

						
						</div>
					
				
					</div>
			</div>


</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Buyer/Client.master" AutoEventWireup="true" CodeFile="Addproperty.aspx.cs" Inherits="Seller_Addproperty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="Index.aspx"><i class="fa fa-home home_1"></i></a> / <span>Add Property</span></span>
		</div>
	</div>




    <div class="submit-ad main-grid-border">
		<div class="container">
			<h2 class="w3-head">Add Property</h2>
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
					
                    
                    
                     <div class="clearfix"></div>
                   
                    <label>Property Details<span>*</span></label>
                    
					<asp:TextBox ID="TextBox6" class="phone"  placeholder="Enter Details" runat="server"></asp:TextBox>
					

                    <div class="clearfix"></div>
                    <label>Address <span>*</span></label>
					<asp:TextBox ID="TextBox2" TextMode="MultiLine" class="phone" placeholder="Enter Address" runat="server"></asp:TextBox>
		

                         <div class="clearfix"></div>
                    <label>City<span>*</span></label>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>


                     <div class="clearfix"></div>
                    <label>BasePrice<span>*</span></label>
					<asp:TextBox ID="TextBox3" class="phone" width="30%" placeholder="Enter Minimum Price" runat="server"></asp:TextBox>
					

                     <div class="clearfix"></div>
                    <label>Expire Date<span>*</span></label>
					<asp:TextBox ID="TextBox4" class="phone" TextMode="Date" width="30%"   runat="server"></asp:TextBox>
					
                    <div class="clearfix"></div>

                      <label> Image <span>*</span></label>
                    <div class="photos-upload-view">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
						</div>

						 

                	
                    <div class="clearfix"></div>
               	<asp:Button ID="Button1" runat="server" Text="Submit" 
                    onclick="Button1_Click"  />			
					

                <asp:Label ID="Label1" runat="server" Visible="false" Text="Label"></asp:Label>

						</form>

						
						</div>
					
				
					</div>
			</div>

</asp:Content>


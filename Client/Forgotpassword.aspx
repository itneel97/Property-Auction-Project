﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.master" AutoEventWireup="true" CodeFile="Forgotpassword.aspx.cs" Inherits="Client_Forgotpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="Index.aspx"><i class="fa fa-home home_1"></i></a> / <span>Forgot Password</span></span>
		</div>
	</div>
   <br/>
   <br/><br/>
			<div class="agileinfo_signin">
			<h2 class="w3-head"><center>Forgot Password</center></h2>
				<form id="Form1"  method="post" runat="server">
                
                <asp:DropDownList ID="DropDownList1" runat="server" style="border:1px solid #086FDF; color: #000; font-size: 14px; letter-spacing: 1px; width:100%; margin-bottom: 15px; outline: none; padding: 10px; -webkit-transition: 0.5s all;">
                    <asp:ListItem>---Select Type---</asp:ListItem>
                    <asp:ListItem>Buyer</asp:ListItem>
                    <asp:ListItem>Seller</asp:ListItem>
                </asp:DropDownList>
               
                <asp:TextBox ID="TextBox1" runat="server" name="Your Email" placeholder="Enter Your Email" required=""></asp:TextBox>
					
                <asp:Button ID="Button1" runat="server" Text="Submit" 
                    style="background:#0099e5" onclick="Button1_Click"  /> 
					
					<div class="forgot-grid">
						
						
							
                        <center><asp:Label ID="Label1" style="color:red" runat="server" Visible="false" Text="Label"></asp:Label></center>
						
						
						<div class="clearfix"> </div>
					</div>
				</form>
				<h6> Not a Member Yet? <a href="Joinus.aspx">Sign Up Now</a> </h6>
			</div>
		<br/><br/>

</asp:Content>


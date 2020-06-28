<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Admin_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<section class="wrapper">
<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-laptop"></i> Dashboard</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
						<li><i class="fa fa-laptop"></i>Dashboard</li>						  	
					</ol>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              User
                          </header>
                   <div class="panel-body">
                <div class="row">
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12" style="margin-left: 90px;">
					<div class="info-box blue-bg">
						<i class="fa fa-users"></i>
						<div class="count"> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
						<div class="title">Total Users</div>						
					</div>	
				</div>
              
               
              
                <a href="Buyers.aspx">
                
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12" style="margin-left: 50px;">
					<div class="info-box brown-bg">
						<i class="fa fa-users"></i>
						<div class="count"> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></div>
						<div class="title">Buyers</div>						
					</div>	
				</div>
                 </a>


                  <a href="Sellers.aspx">
                
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12" style="margin-left: 50px;">
					<div class="info-box orange-bg">
						<i class="fa fa-users"></i>
						<div class="count"> <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></div>
						<div class="title">Sellers</div>						
					</div>	
				</div>
                 </a>
                </div>
               
                </div>
                </section>
                </div>
                </div>


                <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Other
                          </header>
                   <div class="panel-body">
                <div class="row">
                <a href="Property.aspx">
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12" style="margin-left: 90px;">
					<div class="info-box green-bg">
						<i class="fa fa-university"></i>
						<div class="count"> <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></div>
						<div class="title">Property</div>						
					</div>	
				</div>
                </a>
              
               
               
                <a href="Auction.aspx">
                
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12" style="margin-left: 50px;">
					<div class="info-box dark-bg">
						<i class="fa fa-gavel"></i>
						<div class="count"> <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></div>
						<div class="title">Auction</div>						
					</div>	
				</div>
                 </a>


                  <a href="Result.aspx">
                
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12" style="margin-left: 50px;">
					<div class="info-box pink-bg">
						<i class="fa fa-trophy"></i>
						<div class="count"> <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></div>
						<div class="title">Result</div>						
					</div>	
				</div>
                 </a>
                 </div>
                 <div class="row">
                  <a href="Category.aspx">
                
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12" style="margin-left: 90px;">
					<div class="info-box red-bg">
						<i class="fa fa-tags"></i>
						<div class="count"> <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></div>
						<div class="title">Category</div>						
					</div>	
				</div>
                 </a>

                  <a href="Feedback.aspx">
                
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12" style="margin-left: 50px;">
					<div class="info-box yellow-bg">
						<i class="fa fa-comments"></i>
						<div class="count"> <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></div>
						<div class="title">Feedback</div>						
					</div>	
				</div>
                 </a>

                 <a href="City.aspx">
                
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12" style="margin-left: 50px;">
					<div class="info-box teal-bg">
						<i class="fa fa-globe"></i>
						<div class="count"> <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></div>
						<div class="title">City</div>						
					</div>	
				</div>
                 </a>

                </div>
               
                </div>
                </section>
                </div>
                </div>

            </section>





</asp:Content>
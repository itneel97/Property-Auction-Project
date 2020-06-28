<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/Client.master" AutoEventWireup="true" CodeFile="Single.aspx.cs" Inherits="Seller_Single" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs">
			<a href="Index.aspx"><i class="fa fa-home home_1"></i></a> / 
			<a href="Property.aspx">Property</a> / 
            <span>Property Detail</span></span>
		</div>
	</div>



    <div class="single-page main-grid-border">
		<div class="container">
			<div class="product-desc">
				<div class="col-md-7 product-view">
					<h2>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h2>
					<p> 
                        <asp:Label ID="Label2" style="color:#0099e5" runat="server" Text="Label"></asp:Label> |  <i class="glyphicon glyphicon-map-marker"></i>City : 
                        <asp:Label ID="Label3" style="color:red" runat="server" Text="Label"></asp:Label> | ID : #
                        <asp:Label ID="Label4" style="color:#0099e5" runat="server" Text="Label"></asp:Label> </p>
					<div class="flexslider">
                      <center>  <asp:Image ID="Image1"  Height="443px" Width="500px" runat="server" /></center>
					</div>
					<!-- FlexSlider -->
					 
					
					<!-- //FlexSlider -->
					<div class="product-details">
						<h4><span class="w3layouts-agileinfo"><h2>Details:</h2></span><p style="margin-bottom: 0px;margin-top: 9px;"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></p><div class="clearfix"></div></h4>
					
					</div>
				</div>
				<div class="col-md-5 product-details-grid">
					<div class="item-price">
						<div class="product-price">
							<p class="p-price" style="color:red">Base Price</p>
							<h3  style="font-size:17px;margin-top:8px;padding-bottom:8px;margin-bottom:0px"class="rate"><b>Rs : <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>/-</b></h3>
                        <div class="clearfix"></div>
						</div>
						<div class="condition">
							<p class="p-price" style="color:red">Location</p>
							<h4 style="color:#0099e5">
                                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></h4>
							<div class="clearfix"></div>
						</div>
						<div class="itemtype">
							<p class="p-price" style="color:red">Status</p>
							<h4 style="color:#0099e5">
                                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></h4>
							<div class="clearfix"></div>
						</div>
					</div>

                
                 
                    <div class="interested text-center">
						<h4>Start Date : 
                            <asp:Label ID="Label9" style="color:#0099e5" runat="server"  Text="Label"></asp:Label></h4>
                            <br/>
                            <h4>Expire Date : 
                            <asp:Label ID="Label10" runat="server"  style="color:#0099e5"  Text="Label"></asp:Label></h4>
						
					</div>
					
						
				</div>
			<div class="clearfix"></div>
			</div>
		</div>
	</div>




</asp:Content>


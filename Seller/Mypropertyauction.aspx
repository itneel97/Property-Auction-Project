<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/Client.master" AutoEventWireup="true" CodeFile="Mypropertyauction.aspx.cs" Inherits="Seller_Mypropertyauction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



 <div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="Index.aspx"><i class="fa fa-home home_1"></i></a> / <span>My Property Auction</span></span>
		</div>
	</div>
    <div class="submit-ad main-grid-border">
		<div class="container">
			<h2 class="w3-head">My Property Auction</h2>
            
            <div class="ads-grid">
				<div class="side-bar col-md-3">
					<div class="search-hotel">
					
					
                    <center> <asp:Image ID="Image2" runat="server" height="120px" width="150px" style="border-radius:100%"/> </center>
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
					<div class="wrapper" style="padding-top: 0px;">					
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					 
					  <div id="myTabContent" class="tab-content">
					
                    <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
						   <div>
												<div id="container">
								
								
                                     
								<div class="clearfix"></div>
                                 
                                                    
							<ul class="list">
								
                               
                                   <center><h1><asp:Label ID="Label1" Visible="false" runat="server" style="color:Red;" Text="Your Property Auction List Is Empty..!!"></asp:Label></h1></center>
                                
                                    <asp:DataList ID="property" runat="server" RepeatDirection="Vertical" Width="100%">
                                   <ItemTemplate>
									<li>
                                     
									<img src='../upload/property/<%#Eval("p_image") %>' height="190px" width="145px" title="" alt="" />
									<section class="list-left" style="width:50%">
									<h5 class="title"><%#Eval("p_name") %></h5>
                                    <p class="catpath" style="color:#0099e5;width:100%"><%#Eval("cat_name") %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-map-marker"></i><font style="color:red"> <%#Eval("c_name") %></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="color:green"><%#Eval("a_status") %></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-user" style="color:black"></i><font style="color:red"> <%#Eval("buyer") %></font></p>
                                   <br/>
									<section style="width:700px"><h5><font style="color:red">Base Price</font> = <font style="color:#0099e5">Rs: <%#Eval("p_baseprice") %>/-</font> <b>|</b> <font style="color:red">Bidding Price</font> = <font style="color:#0099e5">Rs: <%#Eval("a_price") %>/-</font> <b>|</b> <font style="color:red">Limit Price</font> = <font style="color:#0099e5">Rs: <%#Eval("a_limitprice") %>/-</font></h5></section>
									</section>
                                    
                                    
                                    
									 
                                  
                                       
									<div class="clearfix"></div>

									</li> 
                                    </ItemTemplate>
                                    </asp:DataList>
								
								   
								</ul>
                               
						</div>

							</div>
						</div>
                          <asp:Panel ID="Panel2" runat="server">
                          
						
                        </asp:Panel>
					  </div>
					</div>
				</div>
             
				</div>
                </div>
				<div class="clearfix"></div>
			
		</div>	
	</div>


</asp:Content>


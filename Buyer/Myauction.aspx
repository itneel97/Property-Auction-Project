<%@ Page Title="" Language="C#" MasterPageFile="~/Buyer/Client.master" AutoEventWireup="true" CodeFile="Myauction.aspx.cs" Inherits="Buyer_Myauction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="Index.aspx"><i class="fa fa-home home_1"></i></a> / <span>My Auction</span></span>
		</div>
	</div>


    <div class="total-ads main-grid-border">
		<div class="container">
        <h2 class="w3-head">My Auction</h2>
			
			<div class="ads-grid">
				<div class="side-bar col-md-3">
					<div class="search-hotel">
					
					<form id="Form1" runat="server">
                    <center> <asp:Image ID="Image1" runat="server" height="120px" width="150px" style="border-radius:100%" /> </center>
                    <asp:HiddenField ID="HiddenField1" runat="server" /></br>
                <center> <asp:Label ID="Label1" runat="server"  style="color:rgba(255, 76, 76, 0.86);font-size:25px" Text="Label"></asp:Label></center>
						
					</form>
				</div>
				<div class="range">
               <center> <a href="Joinus.aspx" <asp:Label ID="Label5" runat="server"  style="color:#0099e5;font-size:20px" Text="My Account"></asp:Label></a> </center>
					</div>
				<div class="range">
               <center> <a href="Myauction.aspx" <asp:Label ID="Label2" runat="server"  style="color:#0099e5;font-size:20px" Text="My Auction"></asp:Label></a> </center>
					
							
							
				</div>

                	<div class="range">
               <center> <a href="Result.aspx" <asp:Label ID="Label3" runat="server"  style="color:#0099e5;font-size:20px" Text="Result"></asp:Label></a> </center>
					
							
							
				</div>
				
                	<div class="range">
              <center>  <a href="Signout.aspx" <asp:Label ID="Label4" runat="server"  style="color:#0099e5;font-size:20px" Text="Sign Out"></asp:Label></a> </center>
					
							
							
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
								
                               
                                   <center><h1><asp:Label ID="Label6" Visible="false" runat="server" style="color:Red;" Text="Your Property List Is Empty..!!"></asp:Label></h1></center>
                                
                                    <asp:DataList ID="property" runat="server" RepeatDirection="Vertical" Width="100%">
                                   <ItemTemplate>
									<li>
                                     
									<img src='../upload/property/<%#Eval("p_image") %>' height="190px" width="145px" title="" alt="" />
									<section class="list-left" style="width:50%">
									<h5 class="title"><%#Eval("p_name") %></h5>
                                    <p class="catpath" style="color:#0099e5"><%#Eval("cat_name") %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-map-marker"><font style="color:red"><%#Eval("c_name") %></font></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-user" style="color:black"></i><font style="color:red"> <%#Eval("seller") %></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="color:green"><%#Eval("a_status") %></font></p>
                                   <br/>
									<section style="width:700px"><h5><font style="color:red">Base Price</font> = <font style="color:#0099e5">Rs: <%#Eval("p_baseprice") %>/-</font> <b>|</b> <font style="color:red">Bidding Price</font> = <font style="color:#0099e5">Rs: <%#Eval("a_price") %>/-</font> <b>|</b> <font style="color:red">Limit Price</font> = <font style="color:#0099e5">Rs: <%#Eval("a_limitprice") %>/-</font></h5></section>
									</section>
                                    
                                    
                                    <a  class="button"  style="background:red;color:White;right:150px;top: 130px;" href='Myauction.aspx?id=<%#Eval("a_id") %>&state=Delete'  onClick="return confirm('Are You Sure Want to Delete..??');">Remove</a>
									
									 <section style="margin-top: 50px;height: 0px;"><h5 style="color:black"><center><b>Start Date: <%#Eval("p_startdate") %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Expire Date: <%#Eval("p_enddate") %></b></center></h5></section>
									
                                  
                                       
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
				<div class="clearfix"></div>
			</div>
		</div>	
	</div>




</asp:Content>


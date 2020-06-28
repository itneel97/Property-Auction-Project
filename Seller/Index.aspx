<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/Client.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Client_Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="slider">
			<ul class="rslides" id="slider">
				<li>
					<div class="w3ls-slide-text">
						<h3>Bid it to win it</h3>
						<a href="Property.aspx" class="w3layouts-explore-all">Browse all Properties</a>
					</div>
				</li>
				<li>
					<div class="w3ls-slide-text">
						<h3>Find the Best Deals Here</h3>
						<a href="Property.aspx" class="w3layouts-explore">Explore</a>
					</div>
				</li>
			
				
				<li>
					<div class="w3ls-slide-text">
						<h3>The Easiest Way to explore category</h3>
						<a href="Property.aspx" class="w3layouts-explore-all">Explore Category</a>
					</div>
				</li>
			</ul>
		</div>

<!-- browser category-->


<div class="main-content">
			<div class="w3-categories">
				<h3>Browse Categories</h3>
				<div class="container">
               
                <asp:DataList ID="category" runat="server"  RepeatDirection="Horizontal"  RepeatColumns="4" Width="100%">
                <ItemTemplate>
                	<div class="col-md-3" style="width:285px; height:239px">
						<div class="focus-grid w3layouts-boder1">
							<a class="btn-8" href='Property.aspx?id=<%#Eval("cat_id") %>&state=Category'>
								<div class="focus-border">
									<div class="focus-layout">
										<div class="focus-image"><img src='../upload/category/<%#Eval("cat_image") %>' height="90px" width="90px"/></div>
										<h4 class="clrchg"><%#Eval("cat_name") %></h4>
									</div>
								</div>
							</a>
						</div>
					</div>
				</ItemTemplate>
                </asp:DataList>
					
					<div class="clearfix"></div>
				</div>
			</div>







            <!--//popular ads-->



        <div class="w3l-popular-ads">  
				<h3>Most Popular Deals</h3>
				
                
                 <div class="w3l-popular-ads-info">

                  <asp:DataList ID="property" runat="server"  RepeatDirection="Horizontal" RepeatColumns="3" Width="100%">
                  <ItemTemplate>
					<div class="col-md-4 w3ls-portfolio-left" style="width:449.66px; height:182px">
						<div class="portfolio-img event-img">
							<img src="images/ad1.jpg" class="img-responsive" alt=""/>
							<div class="over-image"></div>
						</div>
						<div class="portfolio-description">
						   <h4 style="color:#ff4c4c"><%#Eval("p_name") %></h4>
						   <p>Category: <%#Eval("cat_name") %></p>
                           <p>City: <%#Eval("c_name") %></p>
                           <p>Rs:<%#Eval("p_baseprice") %>/-</p>
							<a href='Single.aspx?id=<%#Eval("p_id") %>'>
								<span>Explore</span>
							</a>
						</div>
						<div class="clearfix"> </div>
					
                  </div>
                  </ItemTemplate>
					</asp:DataList>
					<div class="clearfix"> </div>
				 </div>
			 </div>
  




        <!--partners-->
			<div class="w3layouts-partners">
				<h3>Our Partners</h3>
					<div class="container">
						<ul>
							<li><a href="#"><img class="img-responsive" width="80px" height="80px" src="images/Gujarat-Technological-University-Logo.png" alt=""></a></li>
							<li><a href="#"><img class="img-responsive" src="" alt=""></a></li>
                            <li><a href="#"><img class="img-responsive"  src="images/151669642459804494.png" alt=""></a></li>
                            <li><a href="#"><img class="img-responsive" src="" alt=""></a></li>
							<li><a href="#"><img class="img-responsive"  src="images/99acres0.png" alt=""></a></li>
							
						</ul>
					</div>
				</div>	
		<!--//partners-->


    </div>
</asp:Content>


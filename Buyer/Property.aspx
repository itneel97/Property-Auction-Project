<%@ Page Title="" Language="C#" MasterPageFile="~/Buyer/Client.master" AutoEventWireup="true" CodeFile="Property.aspx.cs" Inherits="Client_Property" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form runat="server">
<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="Index.aspx"><i class="fa fa-home home_1"></i></a> / <span>Property</span></span>
		</div>
	</div>

    
    <div class="total-ads main-grid-border">
		<div class="container">

        <!--  REal asdlfjsdlkjshsdhfsdkhkdfsjsfdsfkhjdfdfsdfa-->
			<div class="select-box">
				<div class="select-city-for-local-ads ads-list">
					<label>Select your Category</label>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
				</div>

				<div class="search-product ads-list">
					<label>Property Name</label>
                    <div class="input-group">
							
							 <asp:TextBox ID="TextBox1" placeholder="Enter Property" class="form-control input-lg" Height="37px" Width="251.98px" runat="server"></asp:TextBox>
					
						</div>

                   
				</div>
                <asp:Button ID="Button1" runat="server" Text="Search" class="button" 
                    style="background:#0099e5; margin-top:20px; color:White" onclick="Button1_Click"/>
				<div class="clearfix"></div>
			</div>
		
        
        
        <!--  original  -->
        
        
        	<div class="ads-grid">
				
				<div class="agileinfo-ads-display col-md-9" style="width:100%">
					<div class="wrapper">					
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					  
					  <div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
						   <div>
												<div id="container">
								
								
								<div class="clearfix"></div>
						
                        	<ul class="list">
								
                                
                                <a href="#">
									
                                   
                                        <asp:DataList ID="property"  RepeatDirection="Vertical" Width="100%" runat="server">
                                        <ItemTemplate>
                                       <li>
                                       
                                        
                                    <img src='../upload/property/<%#Eval("p_image") %>' height="163.8px" width="202.59px" title="" alt="" />    
									
									
                                    <section class="list-left">
									<h5 class="title"><%#Eval("p_name") %></h5>
									<span class="adprice">Rs: <%#Eval("p_baseprice") %>/-</span>
									<p class="catpath" style="color:#0099e5"><%#Eval("cat_name") %>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<font style="color:Red"><%#Eval("p_status") %></font></p>
									
									</section>
									<section class="list-right">
                                   
									<span class="date">Start Date:  <%#Eval("p_startdate") %></span>
                                    </section>
                                   
                                    <section class="list-right" style="width: 170px">
                                    <span class="date">Expire Date: <%#Eval("p_enddate") %></span>
									</section>
                                    
                                     <a  class="button"  style="background:#0099e5; left: 70px;top: 30px; color:White"   href='Single.aspx?id=<%#Eval("p_id") %>'>More</a>
                                    

									<div class="clearfix"></div>
                                    
									</li> 
                                    </ItemTemplate>
                                    </asp:DataList>
                                    
								</a>
                              
							</ul>
						</div>
							</div>
						</div>

						
					  </div>
					</div>
				</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>	
	</div>

</form>
</asp:Content>


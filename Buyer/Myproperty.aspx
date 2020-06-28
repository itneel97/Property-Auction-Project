<%@ Page Title="" Language="C#" MasterPageFile="~/Buyer/Client.master" AutoEventWireup="true" CodeFile="Myproperty.aspx.cs" Inherits="Seller_Myproperty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="Index.aspx"><i class="fa fa-home home_1"></i></a> / <span>My Property</span></span>
		</div>
	</div>

   
    <div class="total-ads main-grid-border">
		<div class="container">
        <h2 class="w3-head">My Property</h2>
			
			<div class="ads-grid">
				<div class="side-bar col-md-3">
					<div class="search-hotel">
					
					<form id="Form1" runat="server">
                    <center> <asp:Image ID="Image1" runat="server"  style="border-radius: 100%; " Height="120px" width="150px"/> </center>
                    <asp:HiddenField ID="HiddenField1" runat="server" /></br>
                <center> <asp:Label ID="Label1" runat="server"  style="color:rgba(255, 76, 76, 0.86);font-size:25px" Text="Label"></asp:Label></center>
						
					</form>
				</div>

                <div class="range">
               <center> <a href="Joinus.aspx" <asp:Label ID="Label5" runat="server"  style="color:#0099e5;font-size:20px" Text="My Account"></asp:Label></a> </center>
				</div>

				
				<div class="range">
               <center> <a href="Myproperty.aspx" <asp:Label ID="Label2" runat="server"  style="color:#0099e5;font-size:20px" Text="My Property"></asp:Label></a> </center>
				</div>

                	<div class="range">
               <center> <a href="Addproperty.aspx" <asp:Label ID="Label3" runat="server"  style="color:#0099e5;font-size:20px" Text="Add Property"></asp:Label></a> </center>
			</div>
				
                	<div class="range">
              <center>  <a href="Signout.aspx" <asp:Label ID="Label4" runat="server"  style="color:#0099e5;font-size:20px" Text="Sign Out"></asp:Label></a> </center>
				</div>


				</div>



				<div class="agileinfo-ads-display col-md-9">
					<div class="wrapper" style="padding-top:0px">					
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					 

                      
					  <div id="myTabContent" class="tab-content">
							
						<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
						   <div>
												<div id="container">
								
								
								<div class="clearfix"></div>
						



                        	<ul class="list">
                             <center><h1> <asp:Label ID="Label6" Visible="false" runat="server" style="color:red" Text="Your Property List Is Empty..!!"></asp:Label></center></h1>
                               
                               <asp:Panel ID="Panel1" Visible="true" runat="server">
                                        <asp:DataList ID="property"  RepeatDirection="Vertical" Width="100%" runat="server">
                                        <ItemTemplate>
                                       <li>
                                       
                                        
                                    <img src='../upload/property/<%#Eval("p_image") %>' height="163.8px" width="202.59px" title="" alt="" />    
									
									
                                    <section class="list-left" style="width:50%">
									<h5 class="title"><%#Eval("p_name") %></h5>
									<span class="adprice">Rs: <%#Eval("p_baseprice") %>/-</span>
									
                                   <p class="catpath" style="color:#0099e5"><%#Eval("cat_name") %>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<font style="color:Red"><%#Eval("p_status") %></font></p>
									
                                    </section>
                                    <section>
									


                                 <a  class="button" style=" background :#0099e5; color:white" href='Editproperty.aspx?id=<%#Eval("p_id") %>&state=Edit' >Edit</a>
                    
                                    <a  class="button" style=" background:Red; color:white" href='Myproperty.aspx?id=<%#Eval("p_id") %>&state=Delete'  onClick="return confirm('Are You Sure Want to Delete..??');">Remove</a>
                    
                                    <section class="list-right" style="width:500px;height:40px;">
                                   
									<span class="date"><b>Start Date:  <%#Eval("p_startdate") %></b></span>
                                    </section>
                                   
                                    <section class="list-right" style="width: 170px">
                                    <span class="date"><b>Expire Date: <%#Eval("p_enddate") %></b></span>

									</section>

                                    </section>

                    <div class="clearfix"></div>
									</li> 
                                    </ItemTemplate>
                                    </asp:DataList>
                                    
								
                                 </asp:Panel>
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


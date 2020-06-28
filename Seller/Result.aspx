<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/Client.master" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="Seller_Result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form2" class="form-validate form-horizontal" runat="server">
<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="Index.aspx"><i class="fa fa-home home_1"></i></a> / <span>Result</span></span>
		</div>
	</div>

   
    <div class="total-ads main-grid-border">
		<div class="container">
        <h2 class="w3-head">Result</h2>
			
			<div class="ads-grid">
				<div class="side-bar col-md-3">
					<div class="search-hotel">
					
					 <center> <asp:Image ID="Image1" runat="server" height="120px" width="150px" style="border-radius:100%" /> </center>
                    <asp:HiddenField ID="HiddenField1" runat="server" /><br/>
                <center> <asp:Label ID="Label10" runat="server"  style="color:rgba(255, 76, 76, 0.86);font-size:25px" Text="Label"></asp:Label></center>
						
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
              <center>  <a href="Result.aspx" <asp:Label ID="Label9" runat="server"  style="color:#0099e5;font-size:20px" Text="Result"></asp:Label></a> </center>
					
							
							
				</div>
				
                	<div class="range">
              <center>  <a href="Signout.aspx" <asp:Label ID="Label1" runat="server"  style="color:#0099e5;font-size:20px" Text="Sign Out"></asp:Label></a> </center>
					
							
							
				</div>


				
				</div>
				<div class="agileinfo-ads-display col-md-9">
					<div class="wrapper" style="padding-top: 0px;">					
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs" style="width: 900px;">
					 
					  <div id="myTabContent" class="tab-content">
					
                    <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
						   <div>
												<div id="container">
								
								
                                     
								<div class="clearfix"></div>
                                 
                                                    
							<ul class="list">
								
                               
                                   <center><h1><asp:Label ID="Label6" Visible="false" runat="server" style="color:Red;" Text="Your Result List Is Empty..!!"></asp:Label></h1></center>
                                
                                    <asp:DataGrid ID="result" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderStyle="None" BorderWidth="1px" CellPadding="0" CssClass="table table-striped table-bordered table-hover"
            DataKeyField="r_id" Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" ShowFooter="True" 
            Style="position: static" Width="100%">
            <FooterStyle BackColor="Beige" CssClass="blk2" ForeColor="#8C4510" 
                Height="20px" />
            <PagerStyle CssClass="pagelist" ForeColor="#8C4510" HorizontalAlign="Center" 
                Mode="NumericPages"/>
            <HeaderStyle BackColor="Black" CssClass="datagrid blk2" Font-Bold="True" 
                ForeColor="White" Height="20px"  />
                
            <Columns>
                <asp:BoundColumn DataField="r_id" HeaderText="ID" 
                    ItemStyle-HorizontalAlign="Left" ItemStyle-Width="100px" 
                    SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="a_id" HeaderText="Auction ID" 
                    ItemStyle-HorizontalAlign="Left" ItemStyle-Width="100px" 
                    SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="p_id" HeaderText="Property ID" 
                    ItemStyle-HorizontalAlign="Left" ItemStyle-Width="100px" 
                    SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="p_name" HeaderText="Property Name" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="buyer" HeaderText="Buyer" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>
                
                

                  <asp:BoundColumn DataField="p_baseprice" HeaderText="Baseprice" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="a_maxprice" HeaderText="Maxprice" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="r_createddate" HeaderText="Created Date" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="r_status" HeaderText="Status" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>
              

                
              
            </Columns>

        </asp:DataGrid>
								
								   
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


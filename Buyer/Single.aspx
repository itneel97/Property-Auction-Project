<%@ Page Title="" Language="C#" MasterPageFile="~/Buyer/Client.master" AutoEventWireup="true" CodeFile="Single.aspx.cs" Inherits="Seller_Single" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" runat="server">
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
                    					
					
                    

						<span class="w3layouts-agileinfo">
                    					
					
                    

						<h4><h2>Details:</h2></span><p style="margin-bottom: 0px;margin-top: 9px;"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></p><div class="clearfix"></div></h4>
					<br/><br/><br/><br/>
                    
                    <div class="post-ad-form">


                    <div class="clearfix"></div>
                    <br/>
                    
                    
					<asp:TextBox ID="TextBox1" class="phone"  placeholder="Enter Price" runat="server" style="margin-left: 90px;"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="***" ControlToValidate="TextBox1" 
                        ForeColor="Red" ValidationGroup="a1"></asp:RequiredFieldValidator>
                     


                    <div class="clearfix"></div>
                   
					<asp:TextBox ID="TextBox2" TextMode="SingleLine" class="phone" placeholder="Enter Limited Price" runat="server" style="margin-left: 90px;"></asp:TextBox>
		            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="***" ControlToValidate="TextBox2" 
                        ForeColor="Red" ValidationGroup="a1"></asp:RequiredFieldValidator>
        <div class="clearfix"></div>
                   
               <asp:Button ID="Button1" style="right:50px;margin-right:125px" runat="server" 
                        Text="Bid Now" ValidationGroup="a1" onclick="Button1_Click"  />		
	<div class="clearfix"></div>
                        <asp:Label ID="Label12" Visible="false" runat="server" Text="Label"></asp:Label>
						
                      
						</div>
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
					


                    <div class="interested text-center">
                       <h4> <asp:Label ID="Label11" runat="server" Visible="false" style="color:#0099e5" Text="Label"></asp:Label></h4>
                        <asp:Panel ID="Panel1" Visible="false" runat="server">
                        

                        <asp:DataGrid ID="single" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderStyle="None" BorderWidth="1px" CellPadding="0" CssClass="table table-striped table-bordered table-hover"
            DataKeyField="a_id" Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" ShowFooter="True" 
            Style="position: static" Width="100%" >


            <FooterStyle BackColor="Beige" CssClass="blk2" ForeColor="#8C4510" 
                Height="20px" />
            <PagerStyle CssClass="pagelist" ForeColor="#8C4510" HorizontalAlign="Center" 
                Mode="NumericPages"/>
            <HeaderStyle BackColor="Black" CssClass="datagrid blk2" Font-Bold="True" 
                ForeColor="White" Height="20px"  />
                
            <Columns>
                <asp:BoundColumn DataField="a_price" HeaderText="Price" 
                    ItemStyle-HorizontalAlign="Left" ItemStyle-Width="100px" 
                    SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="u_email" HeaderText="Person" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>
               
               <asp:BoundColumn DataField="created_date" HeaderText="Date" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>
                
                
              
            </Columns>

        </asp:DataGrid>
        </asp:Panel>

        

					</div>
						
				</div>
                <div class="clearfix"></div>
			
            
            </div>

		</div>
	</div>



    </form>
</asp:Content>


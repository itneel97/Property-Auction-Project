<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Auction.aspx.cs" Inherits="Admin_Auction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<form id="Form1" class="form-validate form-horizontal" runat="server">
  <section class="wrapper"> 
   <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-gavel"></i> Auction</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.aspx">Home</a></li>
						
						<li><i class="fa fa-gavel"></i>Auction</li>
					</ol>
				</div>
			</div>
             <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Auction
                          </header>
                          <div class="panel-body">
                        
                       <asp:Panel ID="Panel1" runat="server" Visible="true"> 
              <asp:DataGrid ID="auction" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderStyle="None" BorderWidth="1px" CellPadding="0" CssClass="table table-striped table-bordered table-hover"
            DataKeyField="a_id" Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" ShowFooter="True" 
            Style="position: static" Width="100%" onpageindexchanged="auction_PageIndexChanged" PageSize="10">
            <FooterStyle BackColor="Beige" CssClass="blk2" ForeColor="#8C4510" 
                Height="20px" />
            <PagerStyle CssClass="pagelist" ForeColor="#8C4510" HorizontalAlign="Center" 
                Mode="NumericPages"/>
            <HeaderStyle BackColor="Black" CssClass="datagrid blk2" Font-Bold="True" 
                ForeColor="White" Height="20px"  />
                
            <Columns>
                <asp:BoundColumn DataField="a_id" HeaderText="ID" 
                    ItemStyle-HorizontalAlign="Left" ItemStyle-Width="50px" 
                    SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                 <asp:BoundColumn DataField="cat_name" HeaderText="Category Name" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                 <asp:BoundColumn DataField="p_name" HeaderText="Name" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black" ItemStyle-Width="100px">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                 <asp:BoundColumn DataField="seller" HeaderText="Seller"  
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="buyer" HeaderText="Buyer" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                 <asp:BoundColumn DataField="c_name" HeaderText="City" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                 <asp:BoundColumn DataField="p_baseprice" HeaderText="Base Price" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                 <asp:BoundColumn DataField="a_price" HeaderText="Bidding Price" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black" ItemStyle-Width="80px">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                 <asp:BoundColumn DataField="a_limitprice" HeaderText="Limit Price" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                 <asp:BoundColumn DataField="p_startdate" HeaderText="Start Date" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black" ItemStyle-Width="90px">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                 <asp:BoundColumn DataField="p_enddate" HeaderText="Expire Date" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black" ItemStyle-Width="90px">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                

                 <asp:TemplateColumn HeaderStyle-BackColor="Black">
                    <HeaderTemplate >
                        <asp:Label ID="Label2" runat="server" Text="Status" ForeColor="White" ></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                  <a style="background-color:Green" class="btn btn-primary btn-sm" href='Auction.aspx?id=<%#Eval("a_id") %>&state=<%#Eval("a_status") %>' /><%#Eval("a_status") %></a>
                    </ItemTemplate>
                    </asp:TemplateColumn>

                 <asp:TemplateColumn HeaderStyle-BackColor="Black">
                    <HeaderTemplate >
                        <asp:Label ID="Label2" runat="server" Text="Images" ForeColor="White" ></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                  <img src='../upload/property/<%#Eval("p_image") %>' alt="" height="50px"width="50px"/>
                    </ItemTemplate>
                    </asp:TemplateColumn>
                  <asp:TemplateColumn HeaderStyle-BackColor="Black" ItemStyle-Width="85px">
                    <HeaderTemplate >
                        <asp:Label ID="Label2" runat="server" Text="Action" ForeColor="White" ></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                    <a  style="background-color:Red" class="btn btn-primary btn-sm" href='Property.aspx?id=<%#Eval("p_id") %>&state=Delete'  onClick="return confirm('Are You Sure Want to Delete..??');"title="Remove">
																	Remove
																</a>
                    </ItemTemplate>
                    </asp:TemplateColumn>
              
            </Columns>

        </asp:DataGrid>
       
        </asp:Panel>
       
                          </div>
                      </section>
                  </div>
              </div>

              
             
              
  </section>
  </form>

</asp:Content>


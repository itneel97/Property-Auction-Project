<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Admin_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<form id="Form1" class="form-validate form-horizontal" runat="server">
                                  
 <section class="wrapper">
 <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-phone"></i>Contact Us</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.aspx">Home</a></li>
						<li><i class="fa fa-phone"></i>Contact Us</li>
					</ol>
				</div>
			</div>

            <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Contact Us
                          </header>
                          <div class="panel-body">
                              <div class="form">
                                      
                                       <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Name</label>
                                          <div class="col-lg-10">
                                          <asp:TextBox ID="TextBox1" runat="server" class="form-control" required placeholder="Name" Width="350px" ></asp:TextBox>
                                             
                                          </div>

                                       
                                      </div>


                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Address</label>
                                          <div class="col-lg-10">
                                          <asp:TextBox ID="TextBox2" runat="server" class="form-control" required placeholder="Address" TextMode="MultiLine" Width="350px" Height="70px"></asp:TextBox>
                                             
                                          </div>

                                       
                                      </div>


                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Contact Number</label>
                                          <div class="col-lg-10">
                                          <asp:TextBox ID="TextBox3" runat="server" class="form-control" required placeholder="Contact Number" Width="350px" ></asp:TextBox>
                                             
                                          </div>

                                       
                                      </div>

                                       <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Email</label>
                                          <div class="col-lg-10">
                                          <asp:TextBox ID="TextBox4" runat="server" class="form-control" required placeholder="email" Width="350px" ></asp:TextBox>
                                             
                                          </div>

                                       
                                      </div>

                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Website</label>
                                          <div class="col-lg-10">
                                          <asp:TextBox ID="TextBox5" runat="server" class="form-control" required placeholder="website" Width="350px" ></asp:TextBox>
                                             
                                          </div>

                                       
                                      </div>


                                      
                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                          <asp:Button ID="Button1" title="Modify contact" runat="server" Text="Change Contact"  class="btn btn-primary" onclick="Button1_Click1"></asp:Button>
                                          </div>
                                      </div>

                                 
                              </div>
                              <hr/>
                              
            <asp:DataGrid ID="contact" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderStyle="None" BorderWidth="1px" CellPadding="0" CssClass="table table-striped table-bordered table-hover"
            DataKeyField="id" Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" ShowFooter="True" 
            Style="position: static" Width="100%" onpageindexchanged="contact_PageIndexChanged" PageSize="10">
            <FooterStyle BackColor="Beige" CssClass="blk2" ForeColor="#8C4510" 
                Height="20px" />
            <PagerStyle CssClass="pagelist" ForeColor="#8C4510" HorizontalAlign="Center" 
                Mode="NumericPages"/>
            <HeaderStyle BackColor="Black" CssClass="datagrid blk2" Font-Bold="True" 
                ForeColor="White" Height="20px"  />
                
            <Columns>
                <asp:BoundColumn DataField="id" HeaderText="ID" 
                    ItemStyle-HorizontalAlign="Left" ItemStyle-Width="100px" 
                    SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="name" HeaderText="Name" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="address" HeaderText="Address" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>
                
                <asp:BoundColumn DataField="contact_no" HeaderText="Contact Number" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="email" HeaderText="Email Address" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>
                
                <asp:BoundColumn DataField="website" HeaderText="WebSite" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                  <asp:TemplateColumn HeaderStyle-BackColor="Black">
                    <HeaderTemplate >
                        <asp:Label ID="Label2" runat="server" Text="Action" ForeColor="White" ></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     
                   
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a  style="background-color:Red" class="btn btn-primary btn-sm" href='Contact.aspx?id=<%#Eval("id") %>&state=Delete'  onClick="return confirm('Are You Sure Want to Delete..??');">Remove</a>
                    
                    </ItemTemplate>
                    </asp:TemplateColumn>
              
            </Columns>

        </asp:DataGrid>
           
                          </div>
                      </section>
                  </div>

              </div>
                         
 </section>

  </form>
</asp:Content>


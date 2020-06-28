<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="Admin_About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form class="form-validate form-horizontal" runat="server">
                                  
 <section class="wrapper">
 <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="icon_document_alt"></i>About Us</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.aspx">Home</a></li>
						<li><i class="icon_document_alt"></i>About Us</li>
					</ol>
				</div>
			</div>

            <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              About Us
                          </header>
                          <div class="panel-body">
                              <div class="form">
                                      
                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Message</label>
                                          <div class="col-lg-10">
                                          <asp:TextBox ID="TextBox1" runat="server" class="form-control" required placeholder="Message" TextMode="MultiLine" Height="70px"></asp:TextBox>
                                             
                                          </div>
                                      </div>
                                      
                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                          <asp:Button class="btn btn-primary"  ID="Button1" runat="server" Text="Submit" 
                                                  onclick="Button1_Click"></asp:Button>
                                             <asp:Button ID="Button2" class="btn btn-primary"  runat="server" Text="Change" 
                                                  onclick="Button2_Click"></asp:Button>
                                         
                                          </div>
                                      </div>

                                 
                              </div>
                              <hr/>
                              <asp:Panel ID="Panel1" runat="server">
            <asp:DataGrid ID="about" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderStyle="None" BorderWidth="1px" CellPadding="0" CssClass="table table-striped table-bordered table-hover"
            DataKeyField="id" Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" ShowFooter="True" 
            Style="position: static" Width="100%" 
                                      onpageindexchanged="about_PageIndexChanged" 
                                       PageSize="10" >
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

                <asp:BoundColumn DataField="message" HeaderText="Message" 
                    ItemStyle-HorizontalAlign="Left" ItemStyle-width="55%" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>
                
                <asp:BoundColumn DataField="c_date" HeaderText="Create Date" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>
                
                
                  <asp:TemplateColumn HeaderStyle-BackColor="Black">
                    <HeaderTemplate >
                        <asp:Label ID="Label2" runat="server" Text="Action" ForeColor="White" ></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a  class="btn btn-primary btn-sm" href='About.aspx?id=<%#Eval("id") %>&state=Edit' title="Edit">Edit</a>
                       
                   
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a  style="background-color:Red" class="btn btn-primary btn-sm" href='About.aspx?id=<%#Eval("id") %>&state=Delete'  onClick="return confirm('Are You Sure Want to Delete..??');">Remove</a>
                    
                    </ItemTemplate>
                    </asp:TemplateColumn>
              
            </Columns>

        </asp:DataGrid>
            </asp:Panel>
                          </div>
                      </section>
                  </div>

              </div>
              

              
            <br />
            
 </section>
  </form>
</asp:Content>


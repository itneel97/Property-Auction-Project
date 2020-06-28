<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="City.aspx.cs" Inherits="Admin_City" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<form id="Form1" class="form-validate form-horizontal" runat="server">
                                  
 <section class="wrapper">
 <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-globe"></i>City</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.aspx">Home</a></li>
						<li><i class="fa fa-globe"></i>City</li>
					</ol>
				</div>
			</div>

            <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              City
                          </header>
                          <div class="panel-body">
                              <div class="form">
                                      
                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">City</label>
                                          <div class="col-lg-10">
                                          <asp:TextBox ID="TextBox1" runat="server" class="form-control" required placeholder="Enter City" TextMode="SingleLine" Width="350px"></asp:TextBox>
                                             
                                          </div>
                                      </div>
                                      
                                       <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Status</label>
                                          <div class="col-lg-10">
                                          <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" Width="350px" >
                                              <asp:ListItem>---Select---</asp:ListItem>
                                              <asp:ListItem>Active</asp:ListItem>
                                              <asp:ListItem>Deactive</asp:ListItem>
                                              </asp:DropDownList>
                                          </div>
                                      </div>


                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                          <asp:Button class="btn btn-primary"  ID="Button1" runat="server" Text="Submit" 
                                                  onclick="Button1_Click"></asp:Button>
                                           <asp:Button ID="Button2" class="btn btn-primary"  runat="server" Text="Change" 
                                                  onclick="Button2_Click" ></asp:Button>
                                          </div>
                                      </div>

                                 
                              </div>
                              <hr/>
                              <asp:Panel ID="Panel1" runat="server">
            <asp:DataGrid ID="city" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderStyle="None" BorderWidth="1px" CellPadding="0" CssClass="table table-striped table-bordered table-hover"
            DataKeyField="c_id" Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" ShowFooter="True" 
            Style="position: static" Width="100%" onpageindexchanged="city_PageIndexChanged" PageSize="10"
                      >
            <FooterStyle BackColor="Beige" CssClass="blk2" ForeColor="#8C4510" 
                Height="20px" />
            <PagerStyle CssClass="pagelist" ForeColor="#8C4510" HorizontalAlign="Center" 
                Mode="NumericPages"/>
            <HeaderStyle BackColor="Black" CssClass="datagrid blk2" Font-Bold="True" 
                ForeColor="White" Height="20px"  />
                
            <Columns>
                <asp:BoundColumn DataField="c_id" HeaderText="ID" 
                    ItemStyle-HorizontalAlign="Left" ItemStyle-Width="100px" 
                    SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="c_name" HeaderText="City" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>
               
               <asp:BoundColumn DataField="c_status" HeaderText="Status" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>
                
                  <asp:TemplateColumn HeaderStyle-BackColor="Black">
                    <HeaderTemplate >
                        <asp:Label ID="Label2" runat="server" Text="Action" ForeColor="White" ></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a  class="btn btn-primary btn-sm" href='City.aspx?id=<%#Eval("c_id") %>&state=Edit' title="Edit">Edit</a>
                       
                   
                    
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a  style="background-color:Red" class="btn btn-primary btn-sm" href='City.aspx?id=<%#Eval("c_id") %>&state=Delete'  onClick="return confirm('Are You Sure Want to Delete..??');">Remove</a>
                    
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


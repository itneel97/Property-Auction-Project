<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Property.aspx.cs" Inherits="Admin_Property" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<form id="Form1" class="form-validate form-horizontal" runat="server">
  <section class="wrapper"> 
   <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-university"></i> Property</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.aspx">Home</a></li>
						
						<li><i class="fa fa-university"></i>Property</li>
					</ol>
				</div>
			</div>
             <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Property
                          </header>
                          <div class="panel-body">
                        
                          <asp:Panel ID="Panel2" Visible="false" runat="server">
                          <div class="form">
                            
                                      <div class="form-group "align="center" style="color:#990000"> <font size="5"><b>-: User Details :-</b></font>  </div>
                                       
                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Name:</label>
                                          <div class="col-lg-10" style="padding-top:6px;">
                                          <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                             
                                          </div>
                                      </div>

                                        <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Image:</label>
                                          <div class="col-lg-10" style="padding-top:6.5px;">
                                        <asp:Image ID="Image2" runat="server" Height="70px" Width="70px"></asp:Image>
                                             
                                          </div>
                                      </div>   

                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Type:</label>
                                          <div class="col-lg-10" style="padding-top:6px;">
                                          <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                                             
                                          </div>
                                      </div>

                                       <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Contact:</label>
                                          <div class="col-lg-10" style="padding-top:6px;">
                                          <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                                             
                                          </div>
                                      </div>

                                       <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Email:</label>
                                          <div class="col-lg-10" style="padding-top:6px;">
                                          <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                                             
                                          </div>
                                      </div>

                                       <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Gender:</label>
                                          <div class="col-lg-10" style="padding-top:6px;">
                                          <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                                             
                                          </div>
                                      </div>

                                      <div class="form-group "align="center" style="color:#990000"> <font size="5"><b>-: Property Details :-</b></font>  </div>
                                     
                                       <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Category Type:</label>
                                          <div class="col-lg-10" style="padding-top:6.5px;">
                                         <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                                             
                                          </div>
                                      </div>    

                                      
                                       <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Property Name:</label>
                                          <div class="col-lg-10" style="padding-top:6.5px;">
                                         <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                                             
                                          </div>
                                      </div>    

                                       <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Details:</label>
                                          <div class="col-lg-10" style="padding-top:6.5px;">
                                         <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                                             
                                          </div>
                                      </div>   
                                      
                                       <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Location:</label>
                                          <div class="col-lg-10" style="padding-top:6.5px;">
                                         <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
                                             
                                          </div>
                                      </div>
                                      
                                        <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">City:</label>
                                          <div class="col-lg-10" style="padding-top:6.5px;">
                                         <asp:Label ID="Label16" runat="server" Text=""></asp:Label>
                                             
                                          </div>
                                      </div>    

                                       <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Image:</label>
                                          <div class="col-lg-10" style="padding-top:6.5px;">
                                        <asp:Image ID="Image1" runat="server" Height="70px" Width="70px"></asp:Image>
                                             
                                          </div>
                                      </div>   

                                     <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Baseprice:</label>
                                          <div class="col-lg-10" style="padding-top:6.5px;">
                                         <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
                                             
                                          </div>
                                      </div> 
                                      
                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Status:</label>
                                          <div class="col-lg-10" style="padding-top:6.5px;">
                                         <asp:Label ID="Label12" runat="server" Text=""></asp:Label>
                                             
                                          </div>
                                      </div> 
                                      
                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Created Date:</label>
                                          <div class="col-lg-10" style="padding-top:6.5px;">
                                         <asp:Label ID="Label15" runat="server" Text=""></asp:Label>
                                             
                                          </div>
                                      </div>    
                                         
                                         <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Start Date:</label>
                                          <div class="col-lg-10" style="padding-top:6.5px;">
                                         <asp:Label ID="Label13" runat="server" Text=""></asp:Label>
                                             
                                          </div>
                                      </div> 
                                      
                                         <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">End Date:</label>
                                          <div class="col-lg-10" style="padding-top:6.5px;">
                                         <asp:Label ID="Label14" runat="server" Text=""></asp:Label>
                                             
                                          </div>
                                      </div> 

                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                          <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Back" 
                                                   title="Back" Visible="false" onclick="Button1_Click"   ></asp:Button>
                                            
                                          </div>
                                      </div>
                                  
                              </div>
                          </asp:Panel>
                          
                              
                              
                              
                              <asp:Panel ID="Panel1" runat="server"> 
              <asp:DataGrid ID="property" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderStyle="None" BorderWidth="1px" CellPadding="0" CssClass="table table-striped table-bordered table-hover"
            DataKeyField="p_id" Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" ShowFooter="True" 
            Style="position: static" Width="100%" onpageindexchanged="property_PageIndexChanged" PageSize="10">
            <FooterStyle BackColor="Beige" CssClass="blk2" ForeColor="#8C4510" 
                Height="20px" />
            <PagerStyle CssClass="pagelist" ForeColor="#8C4510" HorizontalAlign="Center" 
                Mode="NumericPages"/>
            <HeaderStyle BackColor="Black" CssClass="datagrid blk2" Font-Bold="True" 
                ForeColor="White" Height="20px"  />
                
            <Columns>
                <asp:BoundColumn DataField="p_id" HeaderText="ID" 
                    ItemStyle-HorizontalAlign="Left" ItemStyle-Width="50px" 
                    SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                 <asp:BoundColumn DataField="cat_name" HeaderText="Category Name" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="p_name" HeaderText="Name" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

               
                <asp:BoundColumn DataField="p_location" HeaderText="Address" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>


                 <asp:BoundColumn DataField="c_name" HeaderText="City" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                
                <asp:BoundColumn DataField="p_startdate" HeaderText="Start Date" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="p_enddate" HeaderText="Expire Date" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="created_date" HeaderText="Created Date" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>


                 <asp:TemplateColumn HeaderStyle-BackColor="Black">
                    <HeaderTemplate >
                        <asp:Label ID="Label2" runat="server" Text="Status" ForeColor="White" ></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                  <a style="background-color:Green" class="btn btn-primary btn-sm" href='Property.aspx?id=<%#Eval("p_id") %>&state=<%#Eval("p_status") %>' /><%#Eval("p_status") %></a>
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
                  <asp:TemplateColumn HeaderStyle-BackColor="Black">
                    <HeaderTemplate >
                        <asp:Label ID="Label2" runat="server" Text="Action" ForeColor="White" ></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a  href='Property.aspx?id=<%#Eval("p_id") %>&state=View' style="background-color:#004466" class="btn btn-primary btn-sm" title="View">View</a>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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


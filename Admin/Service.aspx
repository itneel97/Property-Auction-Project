﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Service.aspx.cs" Inherits="Admin_Service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<form id="Form1" class="form-validate form-horizontal" runat="server">

<section class="wrapper">
 <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-briefcase"></i>Service</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.aspx">Home</a></li>
						<li><i class="fa fa-briefcase"></i>Service</li>
					</ol>
				</div>
			</div>

            <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Service
                          </header>
                          <div class="panel-body">
                              <div class="form">
                                      
                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Title</label>
                                          <div class="col-lg-10">
                                          <asp:TextBox ID="TextBox1" runat="server" class="form-control" required placeholder="Enter Name" Width="350px"></asp:TextBox>
                                             
                                          </div>
                                      </div>

                                       <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Detail</label>
                                          <div class="col-lg-10">
                                          <asp:TextBox ID="TextBox2" runat="server" class="form-control"  TextMode="MultiLine" required placeholder="Enter Detail" Width="350px"></asp:TextBox>
                                             
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


                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Upload Image</label>
                                          <div class="col-lg-10">
                                         
                                          <asp:Image ID="Image1" runat="server" Height="50px" Width="50px"></asp:Image>
                                          <br />
                                         <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
                                          </div>
                                      </div>

                                      <asp:Panel ID="Panel2" Visible="false" runat="server">
                                       <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Update Date</label>
                                          <div class="col-lg-10">
                                          <asp:TextBox ID="TextBox3" runat="server" vclass="form-control" required placeholder="Enter Name" Width="350px"></asp:TextBox>
                                             
                                          </div>
                                      </div>
                                      </asp:Panel>
                                      
                                      
                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                          <asp:Button class="btn btn-primary"  ID="Button1" title="Submit" runat="server" 
                                                  Text="Submit" onclick="Button1_Click">
                                          </asp:Button>
                                             
                                              <asp:Button class="btn btn-primary" title="Change" ID="Button2" runat="server" 
                                                  Text="Change" onclick="Button2_Click">
                                              </asp:Button>
                                          &nbsp;
                                              <asp:HiddenField ID="HiddenField1" runat="server" />
                                          </div>
                                      </div>



                                 
                              </div>
                              <hr/>
                              <asp:Panel ID="Panel1" runat="server">
            <asp:DataGrid ID="service" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderStyle="None" BorderWidth="1px" CellPadding="0" CssClass="table table-striped table-bordered table-hover"
            DataKeyField="sr_id" Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" ShowFooter="True" 
            Style="position: static" Width="100%" onpageindexchanged="service_PageIndexChanged" PageSize="10"               >
            <FooterStyle BackColor="Beige" CssClass="blk2" ForeColor="#8C4510" 
                Height="20px" />
            <PagerStyle CssClass="pagelist" ForeColor="#8C4510" HorizontalAlign="Center" 
                Mode="NumericPages"/>
            <HeaderStyle BackColor="Black" CssClass="datagrid blk2" Font-Bold="True" 
                ForeColor="White" Height="20px"  />
                
            <Columns>
                <asp:BoundColumn DataField="sr_id" HeaderText="ID" 
                    ItemStyle-HorizontalAlign="Left" ItemStyle-Width="100px" 
                    SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="sr_title" HeaderText="Title" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                 <asp:BoundColumn DataField="sr_detail" HeaderText="Detail" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>
                
                <asp:BoundColumn DataField="sr_status" HeaderText="Status" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>


                <asp:TemplateColumn HeaderStyle-BackColor="Black">
                    <HeaderTemplate >
                        <asp:Label ID="Label2" runat="server" Text="Image" ForeColor="White" ></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                      <img src='../upload/service/<%#Eval("sr_image") %>' alt="" height="50px" width="50px" />    
                    </ItemTemplate>
                    </asp:TemplateColumn>


                 <asp:BoundColumn DataField="sr_createddate" HeaderText="Created Date" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>
                
                 <asp:BoundColumn DataField="sr_updatedate" HeaderText="Update Date" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>


                  <asp:TemplateColumn HeaderStyle-BackColor="Black">
                    <HeaderTemplate >
                        <asp:Label ID="Label2" runat="server" Text="Action" ForeColor="White" ></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a class="btn btn-primary btn-sm" title="Edit" href='Service.aspx?id=<%#Eval("sr_id") %>&state=Edit'  >Edit</a>
                       
                   
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a title="Delete" style="background-color:Red" class="btn btn-primary btn-sm" href='Service.aspx?id=<%#Eval("sr_id") %>&state=Delete'  onClick="return confirm('Are You Sure Want to Delete..??');">Remove</a>
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


<%@ Page Title="" Language="C#" MasterPageFile="~/Buyer/Client.master" AutoEventWireup="true" CodeFile="Service.aspx.cs" Inherits="Client_Service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="Index.aspx"><i class="fa fa-home home_1"></i></a> / <span>Service</span></span>
		</div>
	</div>


<div class="w3-categories">
				<h3>Services</h3>
				<div class="container">
               
                <asp:DataList ID="service" runat="server"  RepeatDirection="Horizontal" RepeatColumns="1" Width="100%">
                <ItemTemplate>
                	<div class="col-md-3" style="width:100%; height:400px">
						<div class="focus-grid w3layouts-boder1">
							<a  >
								<div class="focus-border">
									<div class="focus-layout">
										<div class="focus-image"><img src='../upload/service/<%#Eval("sr_image") %>' height="200px" width="200px"/></div><br/>
										<b><font style="color:#0099e5;font-size:30px "><%#Eval("sr_title") %></font></b>
                                       <p> <h4 ><%#Eval("sr_detail") %></h4></p>
									</div>
								</div>
							</a>
						</div>
					</div>
				</ItemTemplate>
                </asp:DataList>
					
					<div class="clearfix"></div>
				</div>
			</div>

</asp:Content>


<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="MDDataViewCS._Default" %>

<%@ register Assembly="DevExpress.Web.v8.3" Namespace="DevExpress.Web.ASPxPanel"
	TagPrefix="dxp" %>

<%@ register Assembly="DevExpress.Web.v8.3" Namespace="DevExpress.Web.ASPxRoundPanel"
	TagPrefix="dxrp" %>

<%@ register Assembly="DevExpress.Web.v8.3" Namespace="DevExpress.Web.ASPxDataView"
	TagPrefix="dxdv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dxdv:aspxdataview ID="ASPxDataView1" runat="server" DataSourceID="dsMaster" RowPerPage="1" ColumnCount="1" >
			<itemtemplate>
				<b>CategoryID</b>:
				<asp:label ID="CategoryIDLabel1" runat="server" Text='<%#SetItem(Container)%>'></asp:label><br />
				<b>CategoryName</b>:
				<asp:label ID="CategoryNameLabel" runat="server" Text='<%#Eval("CategoryName")%>'></asp:label><br />
				<b>Description</b>:<br />
				<asp:label ID="DescriptionLabel" runat="server" Text='<%#Eval("Description")%>' Width="350px"></asp:label><br />
				<br />
				<dxrp:aspxroundpanel ID="ASPxRoundPanel1" runat="server" Width="200px" HeaderText="Products">
					<panelcollection>
						<dxp:panelcontent runat="server">
							<div style="width:400px; height:400px; overflow:auto">
							<dxdv:aspxdataview ID="ASPxDataView2" runat="server" DataSourceID="dsDetail" >
								<itemtemplate>
									<b>ProductID</b>:
									<asp:label ID="ProductIDLabel" runat="server" Text='<%#Eval("ProductID")%>'></asp:label><br />
									<b>ProductName</b>:
									<asp:label ID="ProductNameLabel" runat="server" Text='<%#Eval("ProductName")%>'>
									</asp:label><br />
									<b>QuantityPerUnit</b>:
									<asp:label ID="QuantityPerUnitLabel" runat="server" Text='<%#Eval("QuantityPerUnit")%>'>
									</asp:label><br />
								 </itemtemplate>
								<paddings Padding="0px" />
								<itemstyle Height="50px" Width="100px">
									<paddings Padding="1px" />
								</itemstyle>

							</dxdv:aspxdataview>
							</div>
						</dxp:panelcontent>
					</panelcollection>
				</dxrp:aspxroundpanel>
			</itemtemplate>
		</dxdv:aspxdataview>
		<asp:accessdatasource ID="dsMaster" runat="server" DataFile="~/App_Data/nwind.mdb"
			SelectCommand="SELECT * FROM [Categories]"></asp:accessdatasource>
		<asp:accessdatasource ID="dsDetail" runat="server" DataFile="~/App_Data/nwind.mdb"
			SelectCommand="SELECT [ProductID], [ProductName], [QuantityPerUnit], [CategoryID] FROM [Products] WHERE ([CategoryID] = ?)">
			<selectparameters>
				<asp:sessionparameter Name="CategoryID" SessionField="CategoryID" Type="Int32" />
			</selectparameters>
		</asp:accessdatasource>
	</div>
	</form>
</body>
</html>


Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web

Namespace MDDataViewCS
	Partial Public Class _Default
		Inherits System.Web.UI.Page
		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

		End Sub


		Protected Function SetItem(ByVal container As Object) As String
			Dim catID As String = (TryCast((TryCast(container, DataViewItemTemplateContainer)).Item.DataItem, DataRowView)).Row.ItemArray(0).ToString()
			Session("CategoryID") = catID
			Return catID
		End Function

	End Class
End Namespace

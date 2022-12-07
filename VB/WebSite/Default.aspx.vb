Imports Microsoft.VisualBasic
Imports System
Imports System.Data

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub ASPxPopupControl1_WindowDataBound(ByVal source As Object, ByVal e As DevExpress.Web.PopupWindowEventArgs)
		Dim dataItem As DataRowView = CType(e.Window.DataItem, DataRowView)
		e.Window.Modal = Convert.ToBoolean(dataItem("Modal"))
	End Sub
End Class
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Select Window:<br />
            <dx:ASPxComboBox ID="ASPxComboBox1" runat="server" DataSourceID="AccessDataSource1"
                ValueField="ID" ValueType="System.Int32" TextField="HeaderText">
                <ClientSideEvents SelectedIndexChanged="function(s, e) {
	                var window = popupControl.GetWindow(s.GetSelectedIndex());
	                popupControl.ShowWindow(window);
                }" />
            </dx:ASPxComboBox>
            Popup Windows:<br />
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1"
                KeyFieldName="ID">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="0">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataHyperLinkColumn FieldName="ContentUrl" VisibleIndex="1">
                    </dx:GridViewDataHyperLinkColumn>
                    <dx:GridViewDataTextColumn FieldName="HeaderText" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataCheckColumn FieldName="Modal" VisibleIndex="3">
                    </dx:GridViewDataCheckColumn>
                </Columns>
            </dx:ASPxGridView>
            <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" DataSourceID="AccessDataSource1"
                PopupHorizontalAlign="windowCenter" PopupVerticalAlign="WindowCenter" ClientInstanceName="popupControl"
                OnWindowDataBound="ASPxPopupControl1_WindowDataBound" Height="600px" Width="800px">
                <ContentCollection>
                    <dx:PopupControlContentControl runat="server">
                    </dx:PopupControlContentControl>
                </ContentCollection>
            </dx:ASPxPopupControl>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/DataSource.mdb"
                SelectCommand="SELECT [ID], [ContentUrl], [HeaderText], [Modal] FROM [PopupControlDataSource]">
            </asp:AccessDataSource>
        </div>
    </form>
</body>
</html>
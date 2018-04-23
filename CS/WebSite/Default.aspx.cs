using System;
using System.Data;

public partial class _Default : System.Web.UI.Page {
    protected void ASPxPopupControl1_WindowDataBound(object source, DevExpress.Web.ASPxPopupControl.PopupWindowEventArgs e) {
        DataRowView dataItem = (DataRowView)e.Window.DataItem;
        e.Window.Modal = Convert.ToBoolean(dataItem["Modal"]);
    }
}
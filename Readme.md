<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to bind ASPxPopupControl with a data source


<p>It's possible to bind the <a href="http://documentation.devexpress.com/#AspNet/clsDevExpressWebASPxPopupControlPopupWindowtopic">PopupWindow's</a> properties with the DataSource's field, which has the same names.</p><p>However, the PopupWindow's <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPopupControlPopupWindow_Modaltopic">Modal</a> property can't be bound with the corresponding DataSource's field directly. It's possible to bind the <strong>Modal</strong> property in the following manner: handle the ASPxPopupControl's <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPopupControlASPxPopupControl_WindowDataBoundtopic">WindowDataBound</a> event and bind the PopupWindow's <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPopupControlPopupWindow_Modaltopic">Modal</a> property manually.</p>

<br/>



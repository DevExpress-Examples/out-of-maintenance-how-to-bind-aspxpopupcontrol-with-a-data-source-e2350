<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128563604/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E2350)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to bind ASPxPopupControl with a data source
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e2350/)**
<!-- run online end -->


<p>It's possible to bind the <a href="http://documentation.devexpress.com/#AspNet/clsDevExpressWebASPxPopupControlPopupWindowtopic">PopupWindow's</a> properties with the DataSource's field, which has the same names.</p><p>However, the PopupWindow's <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPopupControlPopupWindow_Modaltopic">Modal</a> property can't be bound with the corresponding DataSource's field directly. It's possible to bind the <strong>Modal</strong> property in the following manner: handle the ASPxPopupControl's <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPopupControlASPxPopupControl_WindowDataBoundtopic">WindowDataBound</a> event and bind the PopupWindow's <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPopupControlPopupWindow_Modaltopic">Modal</a> property manually.</p>

<br/>



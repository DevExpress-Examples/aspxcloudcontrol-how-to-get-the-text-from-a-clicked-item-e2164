<!-- default file list -->
*Files to look at*:

* [Solution.sln](./CS/Solution.sln)
* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
<!-- default file list end -->
# ASPxCloudControl - how to get the text from a clicked item


<p>This example demonstrates how to get the text from the clicked ASPxCloudControl item.</p><p>Note: two private functions are used, to get formatted text in WebKit family browsers. We cannot guarantee that they will be supported in future versions of our controls.</p>


<h3>Description</h3>

<p>When an item is clicked, the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxCloudControlScriptsASPxClientCloudControl_ItemClicktopic">ASPxClientCloudControl.ItemClick</a> event is raised. The <em>e.htmlElement</em> contains information about an element where the click occurs.</p>
<p>From this element, the text can be obtained differently in different browsers. This happens due to slightly different rendering browser mechanisms.<br> The <em>GetInnerText</em> custom method checks the browser type using the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxClassesScriptsASPxClientUtilsMembersTopicAll">ASPxClientUtils</a> properties, and then cuts a text using some private DevExpress methods (starting with the "_aspx" prefix).</p>

<br/>



<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxCloudControl" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function OnItemClick(s, e) {
            var text = GetInnerText(e.htmlElement);
            alert(text);
        }

        function GetInnerText(container) {
            if (ASPxClientUtils.netscapeFamily)
                return container.textContent;
            else if (ASPxClientUtils.webKitFamily) {
                var filter = _aspxGetHtml2PlainTextFilter();
                filter.innerHTML = container.innerHTML;
                _aspxSetElementDisplay(filter, true);
                var innerText = filter.innerText;
                _aspxSetElementDisplay(filter, false);
                return innerText;
            } else
                return container.innerText;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <dx:ASPxCloudControl ID="ASPxCloudControl1" runat="server" 
            DataSourceID="SqlDataSource1" TextField="CategoryName" ValueField="CategoryID">
            <ClientSideEvents ItemClick="OnItemClick" />    
        </dx:ASPxCloudControl>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
            SelectCommand="SELECT [CategoryID], [Description], [CategoryName] FROM [Categories]">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>

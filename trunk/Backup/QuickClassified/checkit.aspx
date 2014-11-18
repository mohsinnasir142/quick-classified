<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="checkit.aspx.cs" Inherits="QuickClassified.checkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<%-- <link rel="stylesheet" href="Styles/dragdrop/jquery.ui.all.css" type="text/css"/>
	
    <script src="Scripts/dragdrop/jquery-1.8.2.js" type="text/javascript"></script>
	<script src="Scripts/dragdrop/jquery.ui.core.js" type="text/javascript"></script>
	<script src="Scripts/dragdrop/jquery.ui.widget.js" type="text/javascript"></script>
	<script src="Scripts/dragdrop/jquery.ui.mouse.js" type="text/javascript"></script>
	<script src="Scripts/dragdrop/jquery.ui.sortable.js" type="text/javascript"></script>
	
    <link rel="stylesheet" href="Styles/dragdrop/demos.css" type="text/css">
    --%>
	<style>
	.column { width: 170px; float: left; padding-bottom: 100px; }
	.portlet { margin: 0 1em 1em 0; }
	.portlet-header { margin: 0.3em; padding-bottom: 4px; padding-left: 0.2em; }
	.portlet-header .ui-icon { float: right; }
	.portlet-content { padding: 0.4em; }
	.ui-sortable-placeholder { border: 1px dotted black; visibility: visible !important; height: 50px !important; }
	.ui-sortable-placeholder * { visibility: hidden; }
	</style>
	<script>
	    $(function () {
	        $(".column").sortable({
	            connectWith: ".column"
	        });

	        $(".portlet").addClass("ui-widget ui-widget-content ui-helper-clearfix ui-corner-all")
			.find(".portlet-header")
				.addClass("ui-widget-header ui-corner-all")
				.prepend("<span class='ui-icon ui-icon-minusthick'></span>")
				.end()
			.find(".portlet-content");

	        $(".portlet-header .ui-icon").click(function () {
	            $(this).toggleClass("ui-icon-minusthick").toggleClass("ui-icon-plusthick");
	            $(this).parents(".portlet:first").find(".portlet-content").toggle();
	        });

	        $(".column").disableSelection();
	    });
	</script>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

 
 <div>
<div class="column">
	<div class="portlet">
		
		<div class="portlet-content">
     <table><tbody><tr><td  >1</td><td>2</td><td>3</td></tr>
        <tr>
        <td>
      
        <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>1</td>
        <td>2<asp:LinkButton ID="LinkButton2" runat="server" >LinkButton</asp:LinkButton></td>
        <td>3<asp:LinkButton ID="LinkButton3" runat="server">LinkButton</asp:LinkButton></td>
        </tr>

        <tr>
        <td>
        <asp:LinkButton ID="LinkButton4" runat="server">LinkButton</asp:LinkButton>1</td>
        <td>2<asp:LinkButton ID="LinkButton5" runat="server">LinkButton</asp:LinkButton></td>
        <td>3<asp:LinkButton ID="LinkButton6" runat="server">LinkButton</asp:LinkButton></td><
        </tr>
        
        <tr>
        <td>1<asp:LinkButton ID="LinkButton7" runat="server">LinkButton</asp:LinkButton></td>
        <td>2<asp:LinkButton ID="LinkButton8" runat="server">LinkButton</asp:LinkButton></td>
        <td>3<asp:LinkButton ID="LinkButton9" runat="server">LinkButton</asp:LinkButton></td><
        
        </tr>
        </tbody>
        </table>
        Lorem ipsum dolor sit amet, consectetuer adipiscing elit</div>
	</div>
	
	<div class="portlet">
		<div class="portlet-header">News</div>
		<div class="portlet-content">
       <table><tbody><tr><td>1</td><td>2</td><td>3</td></tr>
        <tr><td>1</td><td>2</td><td>3</td></tr>
        <tr><td>1</td><td>2</td><td>3</td></tr>
        <tr><td>1</td><td>2</td><td>3</td></tr>
        </tbody>
        </table>
        Lorem ipsum dolor sit amet, consectetuer adipiscing elit</div>
	</div>


	<div class="portlet">
		<div class="portlet-header">Shopping</div>
		<div class="portlet-content">
      <table><tbody><tr><td>1</td><td>2</td><td>3</td></tr>
        <tr><td>1</td><td>2</td><td>3</td></tr>
        <tr><td>1</td><td>2</td><td>3</td></tr>
        <tr><td>1</td><td>2</td><td>3</td></tr>
        </tbody>
        </table>
        Lorem ipsum dolor sit amet, consectetuer adipiscing elit</div>
	</div>


	<div class="portlet">
		<div class="portlet-header">Links</div>
		<div class="portlet-content">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</div>
	</div>
	
	<div class="portlet">
		<div class="portlet-header">Images</div>
		<div class="portlet-content">
        <table><tbody><tr><td>1</td><td>2</td><td>3</td></tr>
        <tr><td>1</td><td>2</td><td>3</td></tr>
        <tr><td>1</td><td>2</td><td>3</td></tr>
        <tr><td>1</td><td>2</td><td>3</td></tr>
        </tbody>
        </table>
        Lorem ipsum dolor sit amet, consectetuer adipiscing elit</div>
	</div>
    </div>
    </div>


     

</asp:Content>

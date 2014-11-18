<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="QuickClassified.Ads.view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style1
    {
        font-family: Andalus;
    }
    .style2
    {
        font-family: "Arial Black";
        font-size: x-large;
    }
    .style3
    {
        font-family: "Arial Black";
        font-size: x-small;
    }
    .style4
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: x-small;
    }
    .style5
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: small;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
        <br />
    <table style="width: 89%;">
            <tr>
                <td class="style7">
                    SEARCH</td>
                <td class="style8">
                    MIN PRICE</td>
                <td class="style9">
                    MAX PRICE</td>
                <td class="style10">
                    CITY</td>
                <td class="style11">
                    ITEM</td>
                <td class="style11">
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:TextBox ID="TextBox1" runat="server" Width="140px"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:TextBox ID="TextBox2" runat="server" Width="80px"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:TextBox ID="TextBox3" runat="server" Width="80px"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        Height="20px" Width="162px">
                         <asp:ListItem>Select One</asp:ListItem>
                                <asp:ListItem>Karachi</asp:ListItem>
                                <asp:ListItem>Lahore</asp:ListItem>
                                <asp:ListItem>Faisalabad</asp:ListItem>
                                <asp:ListItem>Rawalpindi</asp:ListItem>
                                <asp:ListItem>Multan</asp:ListItem>
                                <asp:ListItem>Hyderabad</asp:ListItem>
                                <asp:ListItem>Gujranwala</asp:ListItem>
                                <asp:ListItem>Islamabad</asp:ListItem>
                                <asp:ListItem>Quetta</asp:ListItem>
                                <asp:ListItem>Bahawalpur</asp:ListItem>
                                <asp:ListItem>Sargodha</asp:ListItem>
                                <asp:ListItem>Sailkot</asp:ListItem>
                                <asp:ListItem>Sukkur</asp:ListItem>
                                <asp:ListItem>Larkana</asp:ListItem>
                                <asp:ListItem>Shekhupura</asp:ListItem>
                                <asp:ListItem>Jhang</asp:ListItem>
                                <asp:ListItem>Gujrat</asp:ListItem>
                                <asp:ListItem>Mardan</asp:ListItem>
                                <asp:ListItem>Rahim Yar Khan</asp:ListItem>
                                <asp:ListItem>Peshawa</asp:ListItem>
                                <asp:ListItem>Muzaffarabad</asp:ListItem>
                                <asp:ListItem>Mirpur</asp:ListItem>
                                <asp:ListItem>Skardu</asp:ListItem>
                                <asp:ListItem>Shandur</asp:ListItem>
                                <asp:ListItem>Malakand</asp:ListItem>
                                <asp:ListItem>Miran Shah</asp:ListItem>
                                <asp:ListItem>Khyber</asp:ListItem>
                                <asp:ListItem>North Waziristan</asp:ListItem>
                                <asp:ListItem>South Waziristan</asp:ListItem>
                                <asp:ListItem>Wana</asp:ListItem>
                                <asp:ListItem>Abbottabad</asp:ListItem>
                                <asp:ListItem>Bannu</asp:ListItem>
                                <asp:ListItem>Batgram</asp:ListItem>
                                <asp:ListItem>Chitral</asp:ListItem>
                                <asp:ListItem>Dera Ismail Khan</asp:ListItem>
                                <asp:ListItem>Swabi</asp:ListItem>
                                <asp:ListItem>Swat</asp:ListItem>
                                <asp:ListItem>ArifWala</asp:ListItem>
                                <asp:ListItem>Bhalwal</asp:ListItem>
                                <asp:ListItem>Bahawalnagar</asp:ListItem>
                                <asp:ListItem>Burewala</asp:ListItem>
                                <asp:ListItem>Chakwal</asp:ListItem>
                                <asp:ListItem>Chiniot</asp:ListItem>
                                <asp:ListItem>Daska</asp:ListItem>
                                <asp:ListItem>Dera Ghazi Khan</asp:ListItem>
                                <asp:ListItem>Hafizabad</asp:ListItem>
                                <asp:ListItem>Haroonabad</asp:ListItem>
                                <asp:ListItem>Hasilpur</asp:ListItem>
                                <asp:ListItem>Jhelum</asp:ListItem>
                                <asp:ListItem>Kamaila</asp:ListItem>
                                <asp:ListItem>Khanewal</asp:ListItem>
                                <asp:ListItem>Khushab</asp:ListItem>
                                <asp:ListItem>Kamokey</asp:ListItem>
                                <asp:ListItem>KotAddu</asp:ListItem>
                                <asp:ListItem>Jauharabad</asp:ListItem>
                                <asp:ListItem>Mianwali</asp:ListItem>
                                
                                <asp:ListItem>Mandi Bahauddin</asp:ListItem>
                                <asp:ListItem>Muree</asp:ListItem>
                                <asp:ListItem>Muridke</asp:ListItem>
                                <asp:ListItem>Muzaffargarh</asp:ListItem>
                                <asp:ListItem>Narowal</asp:ListItem>
                                <asp:ListItem>Okara</asp:ListItem>
                                <asp:ListItem>Pak Pattan</asp:ListItem>
                                <asp:ListItem>Pattoki</asp:ListItem>
                                <asp:ListItem>Qila Didar Singh</asp:ListItem>
                                <asp:ListItem>Raiwind</asp:ListItem>
                                <asp:ListItem>Sadiqabad</asp:ListItem>
                                <asp:ListItem>Sahiwal</asp:ListItem>
                                <asp:ListItem>Taxila</asp:ListItem>
                                <asp:ListItem>Toba Tek Singh</asp:ListItem>
                                <asp:ListItem>Vehari</asp:ListItem>
                                <asp:ListItem>Wah</asp:ListItem>
                                <asp:ListItem>Wazirabad</asp:ListItem>
                                <asp:ListItem>Baden</asp:ListItem>
                                <asp:ListItem>Ghotki</asp:ListItem>
                                <asp:ListItem>Jamshoro</asp:ListItem>
                                <asp:ListItem>Nazimabad</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        Height="20px" Width="150px" DataSourceID="itemdropdown" 
                        DataTextField="item_name" DataValueField="item_name" >
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="itemdropdown" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [aditem]"></asp:SqlDataSource>
                </td>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server"  Text="Search" onclick="Button1_Click" 
                         />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
        </table>
<br />
<strong style="text-align: center"><span class="style2">
<asp:Label ID="Featureadslabel" runat="server" Text="FEATURES ADS"></asp:Label>
<br />
<asp:Label ID="searchlabel" runat="server" Text="SEARCH RESULT"></asp:Label>
<br />
</span>
<asp:Label ID="booklabel" runat="server" Text="BOOKS"></asp:Label>
</strong>
<br />
        <asp:GridView ID="GridView4" runat="server" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <br />
<strong style="text-align: center"><span class="style5">
<asp:Label ID="mobilelabel" runat="server" Text="MOBILES"></asp:Label>
</span></strong>
        <asp:GridView ID="GridView5" runat="server" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <br />
<strong style="text-align: center"><span class="style5">
<asp:Label ID="joblabel" runat="server" Text="JOBS"></asp:Label>
</span></strong>
        <asp:GridView ID="GridView6" runat="server" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
<br />
<asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
            ForeColor="Black">
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
    <RowStyle BackColor="White" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
<br />
<br />
</asp:Content>

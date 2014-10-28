<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="div_show.aspx.cs" Inherits="QuickClassified.Ads.div_show" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

    .style1
    {
        font-family: Andalus;
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
    .style3
    {
        font-family: "Arial Black";
        font-size: x-small;
    }
        #Div1
        {
            width: 109px;
            margin-right: 1px;
        }
        #Div2
        {
            width: 106px;
        }
        #Div3
        {
            width: 103px;
        }
        .style31
        {
            width: 129px;
        }
        .style32
        {
            font-family: Andalus;
            width: 129px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 126%;">
            <tr>
                <td class="style31">
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
                <td class="style32">
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
                <td class="style32">
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
        <div>
           
           <br />
            <br />
        
           <br />
          
            <asp:Label ID="result_message" runat="server" Text=""></asp:Label>
  <div id="plcDiv" runat="server"></div>
 <%--  <asp:PlaceHolder id="plcDiv" runat="server"  />--%>
       <br />
      <br />
          
    </div>
</asp:Content>

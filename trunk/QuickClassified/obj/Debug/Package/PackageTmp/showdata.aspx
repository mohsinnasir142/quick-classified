<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="showdata.aspx.cs" Inherits="QuickClassified.showdata" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <h1 align="center"> <b><asp:Label ID="message_label" runat="server" Text="Label" 
           style="text-align: center"></asp:Label></b></h1> <br />
    <asp:PlaceHolder ID="body_ph" runat="server"></asp:PlaceHolder>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="QuickClassified.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="message_label" runat="server" Text=""></asp:Label>
    <br />
    <asp:PlaceHolder ID="search_ph" runat="server"></asp:PlaceHolder>
</asp:Content>

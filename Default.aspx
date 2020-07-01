<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Hurrah We have Completed!</h2>
            </hgroup>
            <p>
                  
            </p>
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Getting Started</h5>
            Add something there
        </li>
        <li class="two">
            <h5>Invite Others</h5>
            Add Some text here
        </li>
        <li class="three">
            <h5>Find Your Packages</h5>
            Add Some Text here
        </li>
    </ol>
</asp:Content>
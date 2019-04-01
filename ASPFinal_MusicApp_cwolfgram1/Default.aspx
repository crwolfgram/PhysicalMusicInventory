<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASPFinal_MusicApp_cwolfgram1.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <p id="intructions">Please enter your physical music item here.</p>
        <p id="entries" runat="server">There have been no entries during this session.</p>

        <div id="form" runat="server">
            <asp:Label ID="lblTitle" runat="server" Text="Title:"></asp:Label>
            <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvTitle" runat="server" ErrorMessage="Please enter a title." Display="None" ControlToValidate="txtTitle"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblArtist" runat="server" Text="Artist:"></asp:Label>
            <asp:TextBox ID="txtArtist" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvArtist" runat="server" ErrorMessage="Please enter an artist." Display="None" ControlToValidate="txtArtist"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblGenre" runat="server" Text="Genre:"></asp:Label>
            <asp:TextBox ID="txtGenre" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvGenre" runat="server" ErrorMessage="Please enter a genre." Display="None" ControlToValidate="txtGenre"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblFormat" runat="server" Text="Format:"></asp:Label>
            <asp:TextBox ID="txtFormat" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFormat" runat="server" ErrorMessage="Please enter a format." Display="None" ControlToValidate="txtFormat"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblYear" runat="server" Text="Release Year:"></asp:Label>
            <asp:TextBox ID="txtYear" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a year (e.x. 1994)." Display="None" ControlToValidate="txtYear"></asp:RequiredFieldValidator>
            <br />
            <asp:RadioButtonList ID="rblState" runat="server">
                <asp:ListItem>Owned</asp:ListItem>
                <asp:ListItem>Want</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="Please select one of the buttons." Display="None" ControlToValidate="rblState"></asp:RequiredFieldValidator>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_click" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <span id="success" runat="server"></span>
        </div>
    </section>

    <script>
        var textBoxes = document.querySelectorAll("input");
        var success = document.querySelector('#ContentPlaceHolder1_success');

        for (textBox of textBoxes) {
            textBox.addEventListener("click", function () {

                success.style.display = "none";

            });
        };

    </script>

</asp:Content>

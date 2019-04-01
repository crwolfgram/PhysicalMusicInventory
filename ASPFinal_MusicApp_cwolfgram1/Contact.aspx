<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ASPFinal_MusicApp_cwolfgram1.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div id="form" runat="server">
            <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label><asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Name is required." ControlToValidate="txtName" Display="None"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblDate" runat="server" Text="Date:"></asp:Label><asp:TextBox ID="txtDate" placeholder=" ex. 02/28/2018" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="Date is required." ControlToValidate="txtDate" Display="None"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="refDate" runat="server" ErrorMessage="Please enter a valid date in this format 02/28/2018." ControlToValidate="txtDate" ValidationExpression="^(0?[1-9]|1[0-2])\/(0?[1-9]|1[0-9]|2[0-9]|3[01])\/\d{4}$" Display="None"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="lblEmail" runat="server" Text="Email Address:"></asp:Label><asp:TextBox ID="txtEmail" placeholder=" ex. example@email.com" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is required." ControlToValidate="txtEmail" Display="None"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="refEmail" runat="server" ErrorMessage="Please enter a valid Email Address." ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="lblConfirmation" runat="server" Text="Email Confirmation:"></asp:Label><asp:TextBox ID="txtConfirmation" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvConfirmation" runat="server" ErrorMessage="Confirmation is required." ControlToValidate="txtConfirmation" Display="None"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="compvConfirmation" runat="server" ErrorMessage="Emails must match." ControlToValidate="txtConfirmation" ControlToCompare="txtEmail" Display="None"></asp:CompareValidator>
            <br />
            <asp:Label ID="lblSubject" runat="server" Text="Subject:"></asp:Label><asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ErrorMessage="Subject is required." ControlToValidate="txtSubject" Display="None"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblMessage" runat="server" Text="Message:"></asp:Label><asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Height="100" Width="200"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="Message is required." ControlToValidate="txtMessage" Display="None"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_click"/><br />

        
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            
        </div>
        <span id="sentMessage" runat="server"></span>
    </section>
</asp:Content>

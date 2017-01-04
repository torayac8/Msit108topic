<%@ Page Title="" Language="C#" MasterPageFile="~/MostPages.master" %>

<script runat="server">

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
       
        if(joinmember.verify(Login1.UserName,Login1.Password))
        {
            e.Authenticated = true;
        }else
        {
            e.Authenticated = false;
        }
    
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate">
    </asp:Login>
</asp:Content>


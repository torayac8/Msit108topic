<%@ Page Title="" Language="C#" MasterPageFile="~/MostPages.master" %>

<script runat="server">

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       
        string errormessage;
        if(joinmember.register(TextBox1.Text,TextBox2.Text,out errormessage))//註冊bool為true作為判斷條件(register是bool類型
        {
            Label1.Text = "成功註冊";
        }else
        {
            Label1.Text = errormessage;
        }
    
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        使用者名稱:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>
    </p>
    <p>
        密碼:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="必須填寫"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/registration.png" OnClick="ImageButton1_Click" title="點我註冊" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
</asp:Content>


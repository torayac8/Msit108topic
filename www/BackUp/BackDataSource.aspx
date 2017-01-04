<%@ Page Title="" Language="C#" MasterPageFile="~/BackUp/MainPage.master" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        FormView1.Visible = true;
        FormView1.ChangeMode(FormViewMode.Insert);
        //CrystalReportHealth.Visible = false;
    }

    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        GridView1.DataBind();
        FormView1.Visible = false;
    }

    protected void HealthSite_Updated(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.Exception == null)
        {
            GridView1.DataBind();
            FormView1.Visible = false;
        }else
        {
            Label4.Text = e.Exception.Message;
            e.ExceptionHandled = true;
        }
    }

    //protected void Button2_Click(object sender, EventArgs e)
    //{
    //    CrystalReportHealth.Visible = true;
    //    FormView1.Visible = false;
    //    HealthReport.Visible = true;    }

    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    if (!IsPostBack) {
    //        CrystalReportHealth.Visible = false;
    //        HealthReport.Visible = false;
    //    }

    //}


    //protected void CrystalReportHealth_Load(object sender, EventArgs e)
    //{
    //    HealthSiteEntities2 he = new HealthSiteEntities2();
    //}
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <p>&nbsp;<a href="BackDataSource.aspx">基本資料</a>:<a href="ParentsData.aspx">親人資料</a>:<a href="OtherHealth.aspx">煙癮資料</a></p>
        <p>&nbsp;<asp:Button ID="Button1" runat="server" BackColor="#9933FF" BorderColor="#33CC33" BorderStyle="Inset" OnClick="Button1_Click" Text="新增健康資料" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MemberId" DataSourceID="HealthSite" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="MemberId" HeaderText="MemberId" ReadOnly="True" SortExpression="MemberId" />
            <asp:BoundField DataField="SleepHour" HeaderText="SleepHour" SortExpression="SleepHour" />
            <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
            <asp:BoundField DataField="Height" HeaderText="Height" SortExpression="Height" />
            <asp:BoundField DataField="Waistline" HeaderText="Waistline" SortExpression="Waistline" />
            <asp:BoundField DataField="DailyJogPath" HeaderText="DailyJogPath" SortExpression="DailyJogPath" />
            <asp:BoundField DataField="MemberName" HeaderText="MemberName" SortExpression="MemberName" />
            <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
            <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
            <asp:BoundField DataField="BMR" HeaderText="BMR" SortExpression="BMR" />
            <asp:BoundField DataField="FER" HeaderText="FER" SortExpression="FER" />
            <asp:BoundField DataField="REE" HeaderText="REE" SortExpression="REE" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="HealthSite" runat="server" ConnectionString="<%$ ConnectionStrings:HealthSiteConnectionString %>" DeleteCommand="DELETE FROM [Membership] WHERE [MemberId] = @MemberId" InsertCommand="INSERT INTO [Membership] ([MemberId], [SleepHour], [Weight], [Height], [Waistline], [DailyJogPath], [MemberName], [Sex], [Birthday], [BMR], [FER], [REE]) VALUES (@MemberId, @SleepHour, @Weight, @Height, @Waistline, @DailyJogPath, @MemberName, @Sex, @Birthday, @BMR, @FER, @REE)" SelectCommand="SELECT * FROM [Membership] ORDER BY [MemberId]" UpdateCommand="UPDATE [Membership] SET [SleepHour] = @SleepHour, [Weight] = @Weight, [Height] = @Height, [Waistline] = @Waistline, [DailyJogPath] = @DailyJogPath, [MemberName] = @MemberName, [Sex] = @Sex, [Birthday] = @Birthday, [BMR] = @BMR, [FER] = @FER, [REE] = @REE WHERE [MemberId] = @MemberId">
        <DeleteParameters>
            <asp:Parameter Name="MemberId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MemberId" Type="Int32" />
            <asp:Parameter Name="SleepHour" Type="Int32" />
            <asp:Parameter Name="Weight" Type="Int32" />
            <asp:Parameter Name="Height" Type="Int32" />
            <asp:Parameter Name="Waistline" Type="Int32" />
            <asp:Parameter Name="DailyJogPath" Type="Int32" />
            <asp:Parameter Name="MemberName" Type="String" />
            <asp:Parameter Name="Sex" Type="String" />
            <asp:Parameter DbType="Date" Name="Birthday" />
            <asp:Parameter Name="BMR" Type="Int32" />
            <asp:Parameter Name="FER" Type="Int32" />
            <asp:Parameter Name="REE" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SleepHour" Type="Int32" />
            <asp:Parameter Name="Weight" Type="Int32" />
            <asp:Parameter Name="Height" Type="Int32" />
            <asp:Parameter Name="Waistline" Type="Int32" />
            <asp:Parameter Name="DailyJogPath" Type="Int32" />
            <asp:Parameter Name="MemberName" Type="String" />
            <asp:Parameter Name="Sex" Type="String" />
            <asp:Parameter DbType="Date" Name="Birthday" />
            <asp:Parameter Name="BMR" Type="Int32" />
            <asp:Parameter Name="FER" Type="Int32" />
            <asp:Parameter Name="REE" Type="Int32" />
            <asp:Parameter Name="MemberId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label4" runat="server" BackColor="#CC00CC"></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" BackColor="#66FFCC" Text="基礎代謝率公式(BMR):男--&gt;13.7*kg+5*cm-6.8*age+66，女--&gt;9.6*kg+1.8*cm-4.7*age+655"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" BackColor="#FF99CC" Text="燃脂運動心律公式(FER):最大心率=220-age，中低強度運動心率=(220-age)*0.6~(220-age)*0.8"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" Text="靜態能量消耗值(REE)男--&gt;(10*kg)+(6.25*cm)-(5*age)-161，女--&gt;(10*kg)+(6.25*cm)-(5.age)+5)"></asp:Label>
    <br />
    <asp:Label ID="Label5" runat="server" Text="使用小鍵盤計算BMR、FER、REE" BorderColor="#FFFF66"></asp:Label>
    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MemberId" DataSourceID="HealthSite1" OnItemInserted="FormView1_ItemInserted">
        <EditItemTemplate>
            MemberId:
            <asp:Label ID="MemberIdLabel1" runat="server" Text='<%# Eval("MemberId") %>' />
            <br />
            SleepHour:&nbsp;<asp:TextBox ID="SleepHourTextBox" runat="server" Text='<%# Bind("SleepHour") %>' />
            <br />
            Weight:&nbsp;<asp:TextBox ID="WeightTextBox" runat="server" Text='<%# Bind("Weight") %>' />
            <br />
            Height:&nbsp;<asp:TextBox ID="HeightTextBox" runat="server" Text='<%# Bind("Height") %>' />
            <br />
            Waistline:&nbsp;<asp:TextBox ID="WaistlineTextBox" runat="server" Text='<%# Bind("Waistline") %>' />
            <br />
            DailyJogPath:
            <asp:TextBox ID="DailyJogPathTextBox" runat="server" Text='<%# Bind("DailyJogPath") %>' />
            <br />
            MemberName:
            <asp:TextBox ID="MemberNameTextBox" runat="server" Text='<%# Bind("MemberName") %>' />
            <br />
            Sex:
            <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
            <br />
            Birthday:&nbsp;<asp:TextBox ID="BirthdayTextBox" runat="server" Text='<%# Bind("Birthday") %>' />
            <br />
            BMR:
            <asp:TextBox ID="BMRTextBox" runat="server" Text='<%# Bind("BMR") %>' />
            <br />
            FER:
            <asp:TextBox ID="FERTextBox" runat="server" Text='<%# Bind("FER") %>' />
            <br />
            REE:
            <asp:TextBox ID="REETextBox" runat="server" Text='<%# Bind("REE") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            MemberId:
            <asp:TextBox ID="MemberIdTextBox" runat="server" Text='<%# Bind("MemberId") %>' />
            <br />
            SleepHour:&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="SleepHourTextBox" Display="Dynamic" ErrorMessage="最少1小時睡眠" ForeColor="#CC0099" MaximumValue="10" MinimumValue="1" Type="Integer"></asp:RangeValidator>
            <asp:TextBox ID="SleepHourTextBox" runat="server" Text='<%# Bind("SleepHour") %>' />
            <br />
            Weight:&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="WeightTextBox" ErrorMessage="需填寫數字" ForeColor="Fuchsia"></asp:RequiredFieldValidator>
            <asp:TextBox ID="WeightTextBox" runat="server" Text='<%# Bind("Weight") %>' />
            <br />
            Height:&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="HeightTextBox" ErrorMessage="需填寫數字" ForeColor="Fuchsia"></asp:RequiredFieldValidator>
            <asp:TextBox ID="HeightTextBox" runat="server" Text='<%# Bind("Height") %>' />
            <br />
            Waistline:&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="WaistlineTextBox" ErrorMessage="需填寫腰圍"></asp:RequiredFieldValidator>
            <asp:TextBox ID="WaistlineTextBox" runat="server" Text='<%# Bind("Waistline") %>' />
            <br />
            DailyJogPath:
            <asp:TextBox ID="DailyJogPathTextBox" runat="server" Text='<%# Bind("DailyJogPath") %>' />
            <br />
            MemberName:
            <asp:TextBox ID="MemberNameTextBox" runat="server" Text='<%# Bind("MemberName") %>' />
            <br />
            Sex:
            <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
            <br />
            Birthday:&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="BirthdayTextBox" ErrorMessage="格式:2000/1/1"></asp:RequiredFieldValidator>
            <asp:TextBox ID="BirthdayTextBox" runat="server" Text='<%# Bind("Birthday") %>' />
            <br />
            BMR:
            <asp:TextBox ID="BMRTextBox" runat="server" Text='<%# Bind("BMR") %>' />
            <br />
            FER:
            <asp:TextBox ID="FERTextBox" runat="server" Text='<%# Bind("FER") %>' />
            <br />
            REE:
            <asp:TextBox ID="REETextBox" runat="server" Text='<%# Bind("REE") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            MemberId:
            <asp:Label ID="MemberIdLabel" runat="server" Text='<%# Eval("MemberId") %>' />
            <br />
            SleepHour:
            <asp:Label ID="SleepHourLabel" runat="server" Text='<%# Bind("SleepHour") %>' />
            <br />
            Weight:
            <asp:Label ID="WeightLabel" runat="server" Text='<%# Bind("Weight") %>' />
            <br />
            Height:
            <asp:Label ID="HeightLabel" runat="server" Text='<%# Bind("Height") %>' />
            <br />
            Waistline:
            <asp:Label ID="WaistlineLabel" runat="server" Text='<%# Bind("Waistline") %>' />
            <br />
            DailyJogPath:
            <asp:Label ID="DailyJogPathLabel" runat="server" Text='<%# Bind("DailyJogPath") %>' />
            <br />
            MemberName:
            <asp:Label ID="MemberNameLabel" runat="server" Text='<%# Bind("MemberName") %>' />
            <br />
            Sex:
            <asp:Label ID="SexLabel" runat="server" Text='<%# Bind("Sex") %>' />
            <br />
            Birthday:
            <asp:Label ID="BirthdayLabel" runat="server" Text='<%# Bind("Birthday") %>' />
            <br />
            BMR:
            <asp:Label ID="BMRLabel" runat="server" Text='<%# Bind("BMR") %>' />
            <br />
            FER:
            <asp:Label ID="FERLabel" runat="server" Text='<%# Bind("FER") %>' />
            <br />
            REE:
            <asp:Label ID="REELabel" runat="server" Text='<%# Bind("REE") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="HealthSite1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthSiteConnectionString %>" DeleteCommand="DELETE FROM [Membership] WHERE [MemberId] = @MemberId" InsertCommand="INSERT INTO [Membership] ([MemberId], [SleepHour], [Weight], [Height], [Waistline], [DailyJogPath], [MemberName], [Sex], [Birthday], [BMR], [FER], [REE]) VALUES (@MemberId, @SleepHour, @Weight, @Height, @Waistline, @DailyJogPath, @MemberName, @Sex, @Birthday, @BMR, @FER, @REE)" SelectCommand="SELECT * FROM [Membership] WHERE ([MemberId] = @MemberId) ORDER BY [MemberId]" UpdateCommand="UPDATE [Membership] SET [SleepHour] = @SleepHour, [Weight] = @Weight, [Height] = @Height, [Waistline] = @Waistline, [DailyJogPath] = @DailyJogPath, [MemberName] = @MemberName, [Sex] = @Sex, [Birthday] = @Birthday, [BMR] = @BMR, [FER] = @FER, [REE] = @REE WHERE [MemberId] = @MemberId">
        <DeleteParameters>
            <asp:Parameter Name="MemberId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MemberId" Type="Int32" />
            <asp:Parameter Name="SleepHour" Type="Int32" />
            <asp:Parameter Name="Weight" Type="Int32" />
            <asp:Parameter Name="Height" Type="Int32" />
            <asp:Parameter Name="Waistline" Type="Int32" />
            <asp:Parameter Name="DailyJogPath" Type="Int32" />
            <asp:Parameter Name="MemberName" Type="String" />
            <asp:Parameter Name="Sex" Type="String" />
            <asp:Parameter DbType="Date" Name="Birthday" />
            <asp:Parameter Name="BMR" Type="Int32" />
            <asp:Parameter Name="FER" Type="Int32" />
            <asp:Parameter Name="REE" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="MemberId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="SleepHour" Type="Int32" />
            <asp:Parameter Name="Weight" Type="Int32" />
            <asp:Parameter Name="Height" Type="Int32" />
            <asp:Parameter Name="Waistline" Type="Int32" />
            <asp:Parameter Name="DailyJogPath" Type="Int32" />
            <asp:Parameter Name="MemberName" Type="String" />
            <asp:Parameter Name="Sex" Type="String" />
            <asp:Parameter DbType="Date" Name="Birthday" />
            <asp:Parameter Name="BMR" Type="Int32" />
            <asp:Parameter Name="FER" Type="Int32" />
            <asp:Parameter Name="REE" Type="Int32" />
            <asp:Parameter Name="MemberId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>


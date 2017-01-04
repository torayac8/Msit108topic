<%@ Page Title="" Language="C#" MasterPageFile="~/BackUp/MainPage.master" %>

<script runat="server">

//protected void Button1_Click(object sender, EventArgs e)
//{
//    FormView1.Visible = true;
//    FormView1.ChangeMode(FormViewMode.Insert);
//}

//protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
//{
//    GridView1.DataBind();
//    FormView1.Visible = false;
//}

//protected void HealthSite_Updated(object sender, SqlDataSourceStatusEventArgs e)
//{
//    if (e.Exception == null)
//    {
//        GridView1.DataBind();
//        FormView1.Visible = false;
//    }else
//    {
//        e.ExceptionHandled = true;
//    }
//}
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <p>&nbsp;<a href="BackDataSource.aspx">基本資料</a>:<a href="ParentsData.aspx">親人資料</a>:<a href="OtherHealth.aspx">煙癮與三酸甘油脂介紹</a></p>
    <p>
        戒菸乃指尼古丁嗜用者為了戒除尼古丁帶來的美好感覺，包含有呼吸心跳加速以及酗酒的狀況。一般而言，一位尼古丁成癮者一日需要約2包香菸。戒菸提早解除你古丁危害，重拾健康，找回自信心。</p>
    <p>
        三酸甘油脂俗稱膽固醇(cholesterol)，據美國心臟病學會的標準，一位20歲以上的成年人的膽固醇指數為:正常&lt;200mg/dl。據研究顯示，膽固醇每減低百分之一，罹患冠狀心臟病的機率減低百分之二。</p>
    <p>有效控制膽固醇的方法為，每周持續規律運動三至四次，每次至少運動卅分鐘</p><a href="http://www.hf123.com/info_5.htm" title="連結六" target="_blank">連結六</a><hr />
</asp:Content>


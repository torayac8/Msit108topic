<%@ Page Title="" Language="C#" MasterPageFile="~/MostPages.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Calendar ID="TopicCalendar" runat="server" BackColor="White" BorderColor="#66FF99" BorderStyle="Ridge" BorderWidth="3px" CellPadding="1" DayNameFormat="Shortest" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" Font-Strikeout="True" Font-Underline="False" ForeColor="#003399" Height="564px" VisibleDate="2016-12-18" Width="1572px">
        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
        <WeekendDayStyle BackColor="#CCCCFF" />
    </asp:Calendar>
    <textarea id="TextArea1" cols="20" name="S1" aria-disabled="True" lang="ar-qa" rows="1">---素問/玉機真藏論篇第十九---
        黃帝問曰：春脈如弦，何如而弦？
岐伯對曰：春脈者，肝也，東方木也，萬物之所以始生也，故其氣來軟弱，輕虛而滑，端直以長，故曰弦，反此者病。
        帝曰：四時之序，逆從之變異也，然脾脈獨何主。....岐伯曰：五實死，五虛死。
        帝曰：願聞五實五虛？
岐伯曰：脈盛，皮熱，腹脹，前後不通，悶瞀，此謂五實。脈細，皮寒，氣少，泄利前後，飲食不入，此謂五虛。
        帝曰：其時有生者何也？
岐伯曰：漿粥入胃，泄注止，則虛者活；身汗得後利，則實者活。此其候也。</textarea><br />
    <asp:TextBox ID="TextBox1" runat="server" Width="1500px">現代人一提到健康，絕對少不了新陳代謝(日文しんちんたいしゃ，白話翻譯新陳交替)，至於甚麼是新陳代謝，"醫學百科--新陳代謝"有稍作介紹。
        接下來節錄自醫學百科，所謂新陳代謝簡單而言，是生物體的生命活動之過程之化學變化總稱。狹義則是物質細胞內發生的一切化學反應以及能量的變化。廣義的言則指生物體在生命活動的過程與外界環境進行物質交換和能量交換。
    </asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" Width="1502px">細胞中的各種物質，不斷合成又不斷分解這種“動態平衡”的過程中，生物得以維持生命。以葡萄糖來說，其能量方成是乃指:C6H12O6+6O2->6Co2+6H2O，在這過程中多數屬放出熱的化學反應
        植物種子貯存大量有機養料，在萌發前和萌發時，種子中的代謝活動與動物細胞中的代謝活動有很多相似之處。只需要空氣、水、無機鹽，以及簡單的無機氮源（常是氨或硝酸鹽）就可生存。通過光合作用，植物能“捕捉”太陽的輻射能，將CO2和水合成葡萄糖，再由葡萄糖合成自身所需的一切物質。
        </asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" Width="1494px">生物氧化過程，即是由各種有機物(食物來源)在酶的作用下，氧化生成CO2和H2O，并釋放出能量的過程。
由于酶的催化作用，生物氧化得以在比較溫和的條件下及有水的環境中進行，并且能量主要是以自由能形式逐步釋放直接供給需要能量的過程。
通過食物氧化得到的能量主要用于合成ATP。然后在適當的催化劑存在時，ATP將經歷三步水解，其提供的能量可用來引起其他化學反應。各種生物活動，如核酸、蛋白質的生物的合成、糖、脂肪、藥物等物質的代謝，以及細胞內外物質的轉運等等，都有ATP參與。ATP被稱為生物體內的能量使者。
                    </asp:TextBox>
    <br />
    <textarea id="TextArea2" cols="20" name="S2" rows="2">
        ===通評虛實論篇第二十八===黃帝問曰：何謂虛實？岐伯對曰：邪氣盛則實，精氣奪則虛。帝曰：虛實何如？岐伯曰：氣虛者，肺虛也。氣逆者，足寒也。非其時則生，當其時則死。余臟皆如此。
帝曰：何謂重實？      帝曰：春極治經絡，夏極治經俞，秋極治六腑。冬則閉塞者，閉塞者，用藥而少針石也。所謂少針石者，非癰疽之謂也。癰疽不待頃時回。癰不知所，按之不應手，乍來乍己，刺手大陰傍三痏與纓脈各二。
    </textarea><br />
    <p>現在日期時間(台灣)::<%= DateTime.Now.ToString() %></p>
</asp:Content>


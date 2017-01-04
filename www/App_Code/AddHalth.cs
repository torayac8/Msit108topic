using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// AddHalth 的摘要描述
/// </summary>
public class AddHalth
{
    public void AddHalt(int? Addiction, int? HDC, int MemberId, DateTime Today, out string errorm)
    {
        errorm = string.Empty;
        OtherHealthBar ohb = new OtherHealthBar();
        ohb.Today = Today;
        ohb.MemberId = MemberId;
        ohb.HDC_mg_dl_ = HDC;
        ohb.Addiction = Addiction;
        try
        {
            HealthSiteEntities3 hse3 = new HealthSiteEntities3();
            hse3.OtherHealthBars.Add(ohb);
            hse3.SaveChanges();

        }catch
        {
            errorm = "錯誤新增";
        }
     //   throw new System.NotImplementedException();
    }
}
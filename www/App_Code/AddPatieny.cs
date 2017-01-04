using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// AddPatieny 的摘要描述
/// </summary>
public class AddPatieny
{
    public void AddPatient(DateTime? Birthday, int BMR, int DailyJogPath, int FER, int Height, int MemberId, string MemberName, int REE, string Sex, int? SleepHour, int? Waistline, int Weight, out string errormsg)
    {
        bool res = false;
        errormsg = string.Empty;
        Membership msp = new Membership();
        msp.Birthday = Birthday;
        msp.BMR = BMR;
        msp.DailyJogPath = DailyJogPath;
        msp.FER = FER;
        msp.Height = Height;
        msp.MemberId = MemberId;
        msp.MemberName = MemberName;
        msp.REE = REE;
        msp.Sex = Sex;
        msp.SleepHour = SleepHour;
        msp.Waistline = Waistline;
        msp.Weight = Weight;
        try
        {
            HealthSiteEntities3 addpat = new HealthSiteEntities3();
            addpat.Memberships.Add(msp);
            addpat.SaveChanges();
            res = true;
        }
        catch
        {
            errormsg = "錯誤新增";
        }
        return;
        //throw new System.NotImplementedException();
    }
}

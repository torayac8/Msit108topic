using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// AddParents 的摘要描述
/// </summary>
public class AddParents
{
    public void AddParent(string BloodType, string FatherName, int MemberId, string MotherName, out string errormsg)
    {
        bool res = false;
        errormsg = string.Empty;
        Parent add = new Parent();
        add.BloodType = BloodType;
        add.FatherName = FatherName;
        add.MemberId = MemberId;
        add.MotherName = MotherName;
        try
        {
            HealthSiteEntities3 addpar = new HealthSiteEntities3();
            addpar.Parents.Add(add);
            addpar.SaveChanges();
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
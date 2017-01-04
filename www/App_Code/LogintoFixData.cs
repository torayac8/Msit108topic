using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// joinmember 的摘要描述
/// </summary>
public class joinmember
{

    public static bool register(string username, string password, out string errormessage)
    {
        
        bool result = false;
        errormessage = string.Empty;
        member staff = new member();
        staff.username = username;
        staff.hashpassword = prodhash(password);
        try
        {
            HealthSiteEntities3 sign = new HealthSiteEntities3();
            sign.members.Add(staff);
            sign.SaveChanges();
            result = true;
        }
        catch
        {
            errormessage = "註冊出錯請稍後";
        }
        return result;
        //throw new System.NotImplementedException();
    }
    static string prodhash(string password)
    {
        string test = BCrypt.Net.BCrypt.GenerateSalt(10);
        string hash = BCrypt.Net.BCrypt.HashPassword(password, test);
        return hash;
    }
    public static bool verify(string username, string password)
    {
        string dbinput = "";
        HealthSiteEntities3 db = new HealthSiteEntities3();
        member user = db.members.Find(username);
        if (user == null)
        {
            return false;
        }
        else
        {
            dbinput = user.hashpassword;
        }
        string inp = prodhash(password);
        return BCrypt.Net.BCrypt.Verify(password, dbinput);
    }

}
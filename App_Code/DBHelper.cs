using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DBHelper
/// </summary>
public class DBHelper
{
    #region Methods
    public static bool IsSwitchOn(int ID)
    {
        bool isOn = false;
        try
        {
            SqlDataReader dr = null;
            string querry1 = "SELECT IsOn FROM tblSwitch WHERE Id = " + ID;
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                conn.Open();

                using (SqlCommand cmd = new SqlCommand(querry1, conn))
                {

                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        isOn = (Boolean)dr["IsOn"];

                    }
                }
            }

        }
        catch (SqlException ex)
        {
            string msg = "Insert Error:";
            msg += ex.Message;
        }

        return isOn;
    }
    public static bool UpdateOnOff(int id, bool ison)
    {

        try
        {
            int i;
            if (ison)
            { i = 1; }
            else i = 0;
            string querry1 = "UPDATE tblSwitch SET IsOn =" + i + " WHERE Id =" + id;
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(querry1, conn))
                {
                    cmd.ExecuteNonQuery();
                    return true;
                }
            }
        }
        catch (SqlException ex)
        {
            string msg = "Insert Error:";
            msg += ex.Message;
        }

        return false;
    }
    public static string BitNum(int id)
    {
        string bitnum ="";
        try
        {
            SqlDataReader dr = null;
            string querry1 = "SELECT BIT_NUM FROM tblSwitch WHERE Id = " + id;
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                conn.Open();

                using (SqlCommand cmd = new SqlCommand(querry1, conn))
                {

                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        bitnum = dr["BIT_NUM"].ToString();
                        
                    }
                }
            }

        }
        catch (SqlException ex)
        {
            string msg = "Insert Error:";
            msg += ex.Message;
        }

        return bitnum;
    }
    #endregion
}
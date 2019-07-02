protectedvoidPage_Load(objectsender,EventArgse)
    {
        SqlConnection con=newSqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        stringquery;
        try
        {
            query="SELECT distinct[Clg_name] FROM [Complete_table]";
            con.Open();
            SqlDataAdapter da=newSqlDataAdapter(query,con);
            DataSet ds=newDataSet();
            da.Fill(ds);
            if(ds.Tables[0].Rows.Count!=0)
            {
                CheckBoxList1.DataSource=ds;
                CheckBoxList1.DataTextField="Clg_Name";
                CheckBoxList1.DataValueField="Clg_Name";
                CheckBoxList1.DataBind();
            }
            else
            {
                Response.Write("No Results found");
            }
        }
        catch(Exception ex)
        {
            Response.Write("<br>"+ex);
        }
        finally
        {
            con.Close();
        }
    }
}
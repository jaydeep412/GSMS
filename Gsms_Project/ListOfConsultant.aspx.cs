using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gsms_Project
{
    public partial class ListOfConsultant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void GridViewConsultantInfo_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                System.Data.DataRowView drv = e.Row.DataItem as System.Data.DataRowView;
                e.Row.Attributes.Add("ondblclick", String.Format("window.location='AddConsultant.aspx?name={0}'", drv["username"]));
            }
        }


    }
}
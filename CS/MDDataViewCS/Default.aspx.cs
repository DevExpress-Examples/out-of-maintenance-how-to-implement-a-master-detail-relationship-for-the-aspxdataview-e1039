using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web;

namespace MDDataViewCS
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected string SetItem(object container)
        {
            string catID = ((container as DataViewItemTemplateContainer).Item.DataItem as DataRowView).Row.ItemArray[0].ToString();
            Session["CategoryID"] = catID;
            return catID;
        }
   
    }
}

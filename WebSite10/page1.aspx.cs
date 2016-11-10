using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Page1 : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView2.Visible = false;
    }
    public void Button_Click(Object sender, EventArgs e)
    {
        Label1.Text = "You selected Product ID: " +
        DropDownList1.SelectedItem.Value + "<br/>";
        var selectedId = DropDownList1.SelectedItem.Value;
        var rows = GridView2.Rows;

        int count = GridView2.Rows.Count;
        if(count > 0)
        {
            //for(var i = 0; i < count; i++)
            //{

            //}
            //records
            var gvr = GridView2.Rows;
            //columns
            var gvc = GridView2.Columns;

            foreach (GridViewRow gv in gvr)
            {
                var id = gv.Cells[0].Text;
                if(id == selectedId)
                {

                    Label2.Text = gv.Cells[0].Text + " - " + gv.Cells[1].Text + " - "+ gv.Cells[2].Text + "<br/>";
                }
            }
            
        }


    }
}
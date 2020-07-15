using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;

namespace Project.Admin
{
    public partial class statistics : System.Web.UI.Page
    {
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String chartType = DropDownList1.SelectedValue;
            if (DropDownList2.SelectedValue == "3D")
            {
                Chart1.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), chartType);
                Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
            }
            else if (DropDownList2.SelectedValue == "2D")
            {
                Chart1.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), chartType);
                Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = false;
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            String chartType = DropDownList1.SelectedValue;
            if (DropDownList2.SelectedValue == "3D")
            {
                Chart1.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), chartType);
                Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
            }
            else if (DropDownList2.SelectedValue == "2D")
            {
                Chart1.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), chartType);
                Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = false;
            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            String chartType = DropDownList3.SelectedValue;
            if (DropDownList4.SelectedValue == "3D")
            {
                Chart2.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), chartType);
                Chart2.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
            }
            else if (DropDownList4.SelectedValue == "2D")
            {
                Chart2.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), chartType);
                Chart2.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = false;
            }
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            String chartType = DropDownList3.SelectedValue;
            if (DropDownList4.SelectedValue == "3D")
            {
                Chart2.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), chartType);
                Chart2.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
            }
            else if (DropDownList4.SelectedValue == "2D")
            {
                Chart2.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), chartType);
                Chart2.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = false;
            }
        }
    }
}
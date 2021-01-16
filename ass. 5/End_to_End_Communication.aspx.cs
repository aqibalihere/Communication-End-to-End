using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using EndToEnd.Helpers;

namespace EndToEnd
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static StudentHelper studentHelper;

        protected void Page_Load(object sender, EventArgs e)
        {
            studentHelper = new StudentHelper();
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]

        public static void AddEmployee()
        {
            var request = HttpContext.Current.Request["Employee"];

            var empconvert = JsonConvert.DeserializeObject<Model>(request);

            studentHelper.Insert(empconvert.name, empconvert.emp_id, empconvert.desig, empconvert.sal);
        }

        public class Model
        {
            public string name { get; set; }
            public string emp_id { get; set; }
            public string desig { get; set; }
            public string sal { get; set; }
        }
    }
}
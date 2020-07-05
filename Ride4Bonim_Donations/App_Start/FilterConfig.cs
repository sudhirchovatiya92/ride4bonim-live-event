using System.Web;
using System.Web.Mvc;

namespace Ride4Bonim_Donations
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}

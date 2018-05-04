using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace AssignmentWD.User
{
    public partial class CompletePurchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirmPurchase_Click(object sender, EventArgs e)
        {
            var clientId = "Aexl3jskdmMK4kKh8a1ScudmYCbhTeRK2iaLGqleiz94cCCAu0VPSyhYUJbkxmmTmflNdZd2iEEiJ2zH";
            var clientSecret = "EHYN8MofvDDMwD0ObWNc-SWDuS1Fsz3Rc2jI4DXM9k5XH_cKHlsm-cUgSODNmt7kONa6RuDU5qxqQpLm";
            var sdkConfig = new Dictionary<string, string> {
                {"mode", "sandbox" },
                {"clientId", "clientId" },
                {"clientSecret", "clientSecret" }
            };

            var accessToken = new OAuthTokenCredential(clientId, clientSecret, sdkConfig).GetAccessToken();
            var apiContext = new APIContext(accessToken);
            apiContext.Config = sdkConfig;


            /*var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            var apiContext = new APIContext(accessToken);*/

            var paymentId = Session["paymentId"].ToString();

            if (!String.IsNullOrEmpty(paymentId))
            {
                var payment = new Payment() { id = paymentId };

                var payerId = Request.QueryString["PayerId"].ToString();
                var paymentExecution = new PaymentExecution() { payer_id = payerId };

                var executedPayment = payment.Execute(apiContext, paymentExecution);

                litInformation.Text = "<p>Your Order has been completed</p>";
                btnConfirmPurchase.Visible = false;
            }
        }
    }
}
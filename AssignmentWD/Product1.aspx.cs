using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace AssignmentWD
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {
            decimal postagePackagingCost = 3.95m;
            decimal productPrice = 10.00m;
            int quantityOfProduct = int.Parse(DDLQuantity.SelectedValue);
            decimal subTotal = (quantityOfProduct * productPrice);
            decimal total = subTotal + postagePackagingCost;

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

            var productItem = new Item();  /*can add product more than 1 such as productItem2,etc...*/
            productItem.name = "Product 1";
            productItem.currency = "USD";
            productItem.price = productPrice.ToString();
            productItem.sku = "PRO1";
            productItem.quantity = quantityOfProduct.ToString();

            /*var productItem2 = new Item();  
            productItem2.name = "Product 2";
            productItem2.currency = "BND";
            productItem2.price = productPrice.ToString();
            productItem2.sku = "PRO2";
            productItem2.quantity = quantityOfProduct.ToString();

            var productItem3 = new Item();  
            productItem3.name = "Product 3";
            productItem3.currency = "BND";
            productItem3.price = productPrice.ToString();
            productItem3.sku = "PRO3";
            productItem3.quantity = quantityOfProduct.ToString();*/

            var transactionDetails = new Details();
            transactionDetails.tax = "0";
            transactionDetails.shipping = postagePackagingCost.ToString();
            transactionDetails.subtotal = subTotal.ToString("0.00");

            var transactionAmount = new Amount();
            transactionAmount.currency = "USD";
            transactionAmount.total = total.ToString();
            transactionAmount.details = transactionDetails;

            var transaction = new Transaction();
            transaction.description = "Your order of Products";
            transaction.invoice_number = Guid.NewGuid().ToString();
            transaction.amount = transactionAmount;
            transaction.item_list = new ItemList
            {
                items = new List<Item> { productItem}
            };

            var payer = new Payer();
            payer.payment_method = "paypal";

            var redirectUrls = new RedirectUrls();
            redirectUrls.cancel_url = "http://" + HttpContext.Current.Request.Url.Authority + "~/Default.aspx";
            redirectUrls.return_url = "http://" + HttpContext.Current.Request.Url.Authority + "~/User/CompletePurchase.aspx";

            var payment = Payment.Create(apiContext, new Payment
            {
                intent = "sale",
                payer = payer,
            transactions = new List<Transaction> { transaction},
            redirect_urls = redirectUrls
            });

            Session["paymentId"] = payment.id;

            foreach (var link in payment.links)
            {
                if (link.rel.ToLower().Trim().Equals("approval_url"))
                {
                    Response.Redirect(link.href);
                }
            }
        }
    }
}
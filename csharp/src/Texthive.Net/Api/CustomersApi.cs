using Texthive.Net.Client;

namespace Texthive.Net.Api
{
    public partial class CustomersApi : CustomersApiGenerated {
        public CustomersApi() : base() {}
        public CustomersApi(string basePath): base(basePath) {}
        public CustomersApi(Texthive.Net.Client.Configuration configuration): base(configuration) {}
        public CustomersApi(Texthive.Net.Client.ISynchronousClient client, Texthive.Net.Client.IAsynchronousClient asyncClient, Texthive.Net.Client.IReadableConfiguration configuration): base(client, asyncClient, configuration) {}
    }
}
using Texthive.Net.Client;

namespace Texthive.Net.Api
{
    public partial class ContactApi : ContactApiGenerated {
        public ContactApi() : base() {}
        public ContactApi(string basePath): base(basePath) {}
        public ContactApi(Texthive.Net.Client.Configuration configuration): base(configuration) {}
        public ContactApi(Texthive.Net.Client.ISynchronousClient client, Texthive.Net.Client.IAsynchronousClient asyncClient, Texthive.Net.Client.IReadableConfiguration configuration): base(client, asyncClient, configuration) {}
    }
}
using Texthive.Net.Client;

namespace Texthive.Net.Api
{
    public partial class SMSApi : SMSApiGenerated {
        public SMSApi() : base() {}
        public SMSApi(string basePath): base(basePath) {}
        public SMSApi(Texthive.Net.Client.Configuration configuration): base(configuration) {}
        public SMSApi(Texthive.Net.Client.ISynchronousClient client, Texthive.Net.Client.IAsynchronousClient asyncClient, Texthive.Net.Client.IReadableConfiguration configuration): base(client, asyncClient, configuration) {}
    }
}
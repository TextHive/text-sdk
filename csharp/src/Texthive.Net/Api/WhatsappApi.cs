using Texthive.Net.Client;

namespace Texthive.Net.Api
{
    public partial class WhatsappApi : WhatsappApiGenerated {
        public WhatsappApi() : base() {}
        public WhatsappApi(string basePath): base(basePath) {}
        public WhatsappApi(Texthive.Net.Client.Configuration configuration): base(configuration) {}
        public WhatsappApi(Texthive.Net.Client.ISynchronousClient client, Texthive.Net.Client.IAsynchronousClient asyncClient, Texthive.Net.Client.IReadableConfiguration configuration): base(client, asyncClient, configuration) {}
    }
}
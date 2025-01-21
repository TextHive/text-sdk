using Texthive.Net.Client;

namespace Texthive.Net.Api
{
    public partial class TemplatesApi : TemplatesApiGenerated {
        public TemplatesApi() : base() {}
        public TemplatesApi(string basePath): base(basePath) {}
        public TemplatesApi(Texthive.Net.Client.Configuration configuration): base(configuration) {}
        public TemplatesApi(Texthive.Net.Client.ISynchronousClient client, Texthive.Net.Client.IAsynchronousClient asyncClient, Texthive.Net.Client.IReadableConfiguration configuration): base(client, asyncClient, configuration) {}
    }
}
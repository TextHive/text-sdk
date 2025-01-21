using Texthive.Net.Client;

namespace Texthive.Net.Api
{
    public partial class MessagesApi : MessagesApiGenerated {
        public MessagesApi() : base() {}
        public MessagesApi(string basePath): base(basePath) {}
        public MessagesApi(Texthive.Net.Client.Configuration configuration): base(configuration) {}
        public MessagesApi(Texthive.Net.Client.ISynchronousClient client, Texthive.Net.Client.IAsynchronousClient asyncClient, Texthive.Net.Client.IReadableConfiguration configuration): base(client, asyncClient, configuration) {}
    }
}
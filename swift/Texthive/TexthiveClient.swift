public class TexthiveClient {
    public var apiKey: String?;
    public var bearerAuth: String?;
    public var basePath: String
    public lazy var contact: ContactAPI = { return ContactAPI(client: self) }()
    public lazy var customers: CustomersAPI = { return CustomersAPI(client: self) }()
    public lazy var messages: MessagesAPI = { return MessagesAPI(client: self) }()
    public lazy var sMS: SMSAPI = { return SMSAPI(client: self) }()
    public lazy var templates: TemplatesAPI = { return TemplatesAPI(client: self) }()
    public lazy var whatsapp: WhatsappAPI = { return WhatsappAPI(client: self) }()

    public init(
        apiKey: String?,
        bearerAuth: String?,
        basePath: String = "http://localhost"
    ) {
        self.apiKey = apiKey
        self.bearerAuth = bearerAuth
        self.basePath = basePath
    }

}

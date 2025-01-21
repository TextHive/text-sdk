package com.texthive.client;

import com.texthive.client.api.ContactApi;
import com.texthive.client.api.CustomersApi;
import com.texthive.client.api.MessagesApi;
import com.texthive.client.api.SmsApi;
import com.texthive.client.api.TemplatesApi;
import com.texthive.client.api.WhatsappApi;

public class Texthive {
    private ApiClient apiClient;
    public final ContactApi contact;
    public final CustomersApi customers;
    public final MessagesApi messages;
    public final SmsApi sms;
    public final TemplatesApi templates;
    public final WhatsappApi whatsapp;

    public Texthive() {
        this(null);
    }

    public Texthive(Configuration configuration) {
        this.apiClient = new ApiClient(null, configuration);
        this.contact = new ContactApi(this.apiClient);
        this.customers = new CustomersApi(this.apiClient);
        this.messages = new MessagesApi(this.apiClient);
        this.sms = new SmsApi(this.apiClient);
        this.templates = new TemplatesApi(this.apiClient);
        this.whatsapp = new WhatsappApi(this.apiClient);
    }

}

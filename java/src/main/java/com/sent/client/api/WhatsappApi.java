package com.texthive.client.api;

import com.texthive.client.ApiClient;
import java.util.UUID;
import com.texthive.client.model.WhatsAppPayload;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class WhatsappApi extends WhatsappApiGenerated {

    public WhatsappApi(ApiClient apiClient) throws IllegalArgumentException {
        super(apiClient);
    }
    public class GetWhatsappContactRequestBuilder extends GetWhatsappContactRequestBuilderGenerated {
        public GetWhatsappContactRequestBuilder(String phoneNumber, Boolean retrieveIfDoesNotExists) {
            super(phoneNumber, retrieveIfDoesNotExists);
        }
    }
}

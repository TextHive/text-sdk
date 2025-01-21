package com.texthive.client.api;

import com.texthive.client.ApiClient;
import com.texthive.client.model.Contact;
import java.util.UUID;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ContactApi extends ContactApiGenerated {

    public ContactApi(ApiClient apiClient) throws IllegalArgumentException {
        super(apiClient);
    }
    public class GetContactByIdRequestBuilder extends GetContactByIdRequestBuilderGenerated {
        public GetContactByIdRequestBuilder(UUID customerId, UUID id) {
            super(customerId, id);
        }
    }
    public class GetContactByPhoneRequestBuilder extends GetContactByPhoneRequestBuilderGenerated {
        public GetContactByPhoneRequestBuilder(UUID customerId, String phoneNumber) {
            super(customerId, phoneNumber);
        }
    }
}

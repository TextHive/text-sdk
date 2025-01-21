package com.texthive.client.api;

import com.texthive.client.ApiClient;
import com.texthive.client.model.ResponsesTemplateResponse;
import com.texthive.client.model.TemplateCreateRequest;
import java.util.UUID;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TemplatesApi extends TemplatesApiGenerated {

    public TemplatesApi(ApiClient apiClient) throws IllegalArgumentException {
        super(apiClient);
    }
    public class CreateTemplateRequestBuilder extends CreateTemplateRequestBuilderGenerated {
        public CreateTemplateRequestBuilder(UUID customerId, String name) {
            super(customerId, name);
        }
    }
    public class GetTemplatesForCustomerRequestBuilder extends GetTemplatesForCustomerRequestBuilderGenerated {
        public GetTemplatesForCustomerRequestBuilder(UUID customerId) {
            super(customerId);
        }
    }
}

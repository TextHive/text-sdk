package com.texthive.client.api;

import com.texthive.client.ApiClient;
import com.texthive.client.model.Customer;
import com.texthive.client.model.CustomersUpdateCustomerRequest;
import java.util.UUID;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomersApi extends CustomersApiGenerated {

    public CustomersApi(ApiClient apiClient) throws IllegalArgumentException {
        super(apiClient);
    }
    public class CreateCustomerRequestBuilder extends CreateCustomerRequestBuilderGenerated {
        public CreateCustomerRequestBuilder() {
            super();
        }
    }
    public class DeleteCustomerRequestBuilder extends DeleteCustomerRequestBuilderGenerated {
        public DeleteCustomerRequestBuilder(UUID id) {
            super(id);
        }
    }
    public class GetAllCustomersRequestBuilder extends GetAllCustomersRequestBuilderGenerated {
        public GetAllCustomersRequestBuilder(Integer page, Integer pageSize) {
            super(page, pageSize);
        }
    }
    public class GetCustomerByIdRequestBuilder extends GetCustomerByIdRequestBuilderGenerated {
        public GetCustomerByIdRequestBuilder(UUID id) {
            super(id);
        }
    }
    public class UpdateCustomerRequestBuilder extends UpdateCustomerRequestBuilderGenerated {
        public UpdateCustomerRequestBuilder(UUID id) {
            super(id);
        }
    }
}

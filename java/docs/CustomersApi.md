# CustomersApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createCustomer**](CustomersApi.md#createCustomer) | **POST** /customers | Create a new customer account |
| [**deleteCustomer**](CustomersApi.md#deleteCustomer) | **DELETE** /customers/{id} | Delete a customer |
| [**getAllCustomers**](CustomersApi.md#getAllCustomers) | **GET** /customers | Retrieve all customers with pagination |
| [**getCustomerById**](CustomersApi.md#getCustomerById) | **GET** /customers/{id} | Retrieve a customer by ID |
| [**updateCustomer**](CustomersApi.md#updateCustomer) | **PUT** /customers/{id} | Update customer information |


<a name="createCustomer"></a>
# **createCustomer**
> Customer createCustomer(body).execute();

Create a new customer account

Creates a new customer account in the Sent platform. This endpoint initializes a new customer profile with basic information and returns the created customer details including generated IDs and credentials for various messaging channels.

### Example
```java
import com.texthive.client.ApiClient;
import com.texthive.client.ApiException;
import com.texthive.client.ApiResponse;
import com.texthive.client.Texthive;
import com.texthive.client.Configuration;
import com.texthive.client.auth.*;
import com.texthive.client.model.*;
import com.texthive.client.api.CustomersApi;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class Example {
  public static void main(String[] args) {
    Configuration configuration = new Configuration();
    configuration.host = "http://localhost";
    
    configuration.apiKey  = "YOUR API KEY";
    
    // Configure HTTP bearer authorization: BearerAuth
    configuration.token = "BEARER TOKEN";
    Texthive client = new Texthive(configuration);
    try {
      Customer result = client
              .customers
              .createCustomer()
              .execute();
      System.out.println(result);
      System.out.println(result.getId());
      System.out.println(result.getName());
      System.out.println(result.getSendingPhoneNumber());
      System.out.println(result.getSmsMessagingProfileId());
      System.out.println(result.getSmsBearerToken());
      System.out.println(result.getCreatedAt());
      System.out.println(result.getUpdatedAt());
    } catch (ApiException e) {
      System.err.println("Exception when calling CustomersApi#createCustomer");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<Customer> response = client
              .customers
              .createCustomer()
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling CustomersApi#createCustomer");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}

```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **body** | **String**| Customer name to create the account | |

### Return type

[**Customer**](Customer.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Customer successfully created |  -  |
| **401** | Authentication credentials are missing or invalid |  -  |

<a name="deleteCustomer"></a>
# **deleteCustomer**
> deleteCustomer(id).execute();

Delete a customer

Permanently deletes a customer and all associated data. This action cannot be undone. All active services for this customer will be terminated.

### Example
```java
import com.texthive.client.ApiClient;
import com.texthive.client.ApiException;
import com.texthive.client.ApiResponse;
import com.texthive.client.Texthive;
import com.texthive.client.Configuration;
import com.texthive.client.auth.*;
import com.texthive.client.model.*;
import com.texthive.client.api.CustomersApi;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class Example {
  public static void main(String[] args) {
    Configuration configuration = new Configuration();
    configuration.host = "http://localhost";
    
    configuration.apiKey  = "YOUR API KEY";
    
    // Configure HTTP bearer authorization: BearerAuth
    configuration.token = "BEARER TOKEN";
    Texthive client = new Texthive(configuration);
    UUID id = UUID.randomUUID(); // Unique identifier of the customer to delete
    try {
      client
              .customers
              .deleteCustomer(id)
              .execute();
    } catch (ApiException e) {
      System.err.println("Exception when calling CustomersApi#deleteCustomer");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      client
              .customers
              .deleteCustomer(id)
              .executeWithHttpInfo();
    } catch (ApiException e) {
      System.err.println("Exception when calling CustomersApi#deleteCustomer");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}

```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **UUID**| Unique identifier of the customer to delete | |

### Return type

null (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Customer successfully deleted |  -  |
| **404** | Customer not found |  -  |

<a name="getAllCustomers"></a>
# **getAllCustomers**
> List&lt;Customer&gt; getAllCustomers(page, pageSize).execute();

Retrieve all customers with pagination

Returns a paginated list of all customers. Use page and pageSize parameters to control the number of results returned. Results are sorted by creation date in descending order.

### Example
```java
import com.texthive.client.ApiClient;
import com.texthive.client.ApiException;
import com.texthive.client.ApiResponse;
import com.texthive.client.Texthive;
import com.texthive.client.Configuration;
import com.texthive.client.auth.*;
import com.texthive.client.model.*;
import com.texthive.client.api.CustomersApi;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class Example {
  public static void main(String[] args) {
    Configuration configuration = new Configuration();
    configuration.host = "http://localhost";
    
    configuration.apiKey  = "YOUR API KEY";
    
    // Configure HTTP bearer authorization: BearerAuth
    configuration.token = "BEARER TOKEN";
    Texthive client = new Texthive(configuration);
    Integer page = 1; // Page number to retrieve (starts from 1)
    Integer pageSize = 20; // Number of items to return per page
    try {
      List<Customer> result = client
              .customers
              .getAllCustomers(page, pageSize)
              .execute();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CustomersApi#getAllCustomers");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<Customer>> response = client
              .customers
              .getAllCustomers(page, pageSize)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling CustomersApi#getAllCustomers");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}

```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **page** | **Integer**| Page number to retrieve (starts from 1) | |
| **pageSize** | **Integer**| Number of items to return per page | |

### Return type

[**List&lt;Customer&gt;**](Customer.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of customers retrieved successfully |  -  |
| **401** | Authentication credentials are missing or invalid |  -  |

<a name="getCustomerById"></a>
# **getCustomerById**
> Customer getCustomerById(id).execute();

Retrieve a customer by ID

Returns detailed information about a specific customer including their messaging channel configurations and credentials.

### Example
```java
import com.texthive.client.ApiClient;
import com.texthive.client.ApiException;
import com.texthive.client.ApiResponse;
import com.texthive.client.Texthive;
import com.texthive.client.Configuration;
import com.texthive.client.auth.*;
import com.texthive.client.model.*;
import com.texthive.client.api.CustomersApi;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class Example {
  public static void main(String[] args) {
    Configuration configuration = new Configuration();
    configuration.host = "http://localhost";
    
    configuration.apiKey  = "YOUR API KEY";
    
    // Configure HTTP bearer authorization: BearerAuth
    configuration.token = "BEARER TOKEN";
    Texthive client = new Texthive(configuration);
    UUID id = UUID.randomUUID(); // Unique identifier of the customer
    try {
      Customer result = client
              .customers
              .getCustomerById(id)
              .execute();
      System.out.println(result);
      System.out.println(result.getId());
      System.out.println(result.getName());
      System.out.println(result.getSendingPhoneNumber());
      System.out.println(result.getSmsMessagingProfileId());
      System.out.println(result.getSmsBearerToken());
      System.out.println(result.getCreatedAt());
      System.out.println(result.getUpdatedAt());
    } catch (ApiException e) {
      System.err.println("Exception when calling CustomersApi#getCustomerById");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<Customer> response = client
              .customers
              .getCustomerById(id)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling CustomersApi#getCustomerById");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}

```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **UUID**| Unique identifier of the customer | |

### Return type

[**Customer**](Customer.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Customer details retrieved successfully |  -  |
| **404** | Customer not found |  -  |

<a name="updateCustomer"></a>
# **updateCustomer**
> Customer updateCustomer(id, customersUpdateCustomerRequest).execute();

Update customer information

Updates an existing customer&#39;s information including messaging channel configurations. All fields in the request body will override existing values.

### Example
```java
import com.texthive.client.ApiClient;
import com.texthive.client.ApiException;
import com.texthive.client.ApiResponse;
import com.texthive.client.Texthive;
import com.texthive.client.Configuration;
import com.texthive.client.auth.*;
import com.texthive.client.model.*;
import com.texthive.client.api.CustomersApi;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class Example {
  public static void main(String[] args) {
    Configuration configuration = new Configuration();
    configuration.host = "http://localhost";
    
    configuration.apiKey  = "YOUR API KEY";
    
    // Configure HTTP bearer authorization: BearerAuth
    configuration.token = "BEARER TOKEN";
    Texthive client = new Texthive(configuration);
    UUID id = UUID.randomUUID(); // Unique identifier of the customer to update
    String name = "name_example"; // Updated name of the customer organization
    String sendingPhoneNumber = "sendingPhoneNumber_example"; // Updated primary phone number for sending messages
    String smsMessagingProfileId = "smsMessagingProfileId_example"; // Updated SMS messaging profile identifier
    String smsBearerToken = "smsBearerToken_example"; // Updated bearer token for SMS authentication
    try {
      Customer result = client
              .customers
              .updateCustomer(id)
              .name(name)
              .sendingPhoneNumber(sendingPhoneNumber)
              .smsMessagingProfileId(smsMessagingProfileId)
              .smsBearerToken(smsBearerToken)
              .execute();
      System.out.println(result);
      System.out.println(result.getId());
      System.out.println(result.getName());
      System.out.println(result.getSendingPhoneNumber());
      System.out.println(result.getSmsMessagingProfileId());
      System.out.println(result.getSmsBearerToken());
      System.out.println(result.getCreatedAt());
      System.out.println(result.getUpdatedAt());
    } catch (ApiException e) {
      System.err.println("Exception when calling CustomersApi#updateCustomer");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<Customer> response = client
              .customers
              .updateCustomer(id)
              .name(name)
              .sendingPhoneNumber(sendingPhoneNumber)
              .smsMessagingProfileId(smsMessagingProfileId)
              .smsBearerToken(smsBearerToken)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling CustomersApi#updateCustomer");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}

```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **UUID**| Unique identifier of the customer to update | |
| **customersUpdateCustomerRequest** | [**CustomersUpdateCustomerRequest**](CustomersUpdateCustomerRequest.md)| Updated customer information | |

### Return type

[**Customer**](Customer.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Customer updated successfully |  -  |
| **401** | Authentication credentials are missing or invalid |  -  |
| **404** | Customer not found |  -  |


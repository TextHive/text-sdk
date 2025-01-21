# TemplatesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createTemplate**](TemplatesApi.md#createTemplate) | **POST** /templates | Create a new message template |
| [**getTemplatesForCustomer**](TemplatesApi.md#getTemplatesForCustomer) | **GET** /templates | Retrieve all templates for a customer |


<a name="createTemplate"></a>
# **createTemplate**
> ResponsesTemplateResponse createTemplate(templateCreateRequest).execute();

Create a new message template

Creates a new message template that can be used for sending standardized messages across different channels. Templates ensure consistent messaging and support variable substitution.

### Example
```java
import com.texthive.client.ApiClient;
import com.texthive.client.ApiException;
import com.texthive.client.ApiResponse;
import com.texthive.client.Texthive;
import com.texthive.client.Configuration;
import com.texthive.client.auth.*;
import com.texthive.client.model.*;
import com.texthive.client.api.TemplatesApi;
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
    UUID customerId = UUID.randomUUID(); // Unique identifier of the customer creating the template
    String name = "name_example"; // Name of the template for identification purposes
    try {
      ResponsesTemplateResponse result = client
              .templates
              .createTemplate(customerId, name)
              .execute();
      System.out.println(result);
      System.out.println(result.getId());
      System.out.println(result.getCustomerId());
      System.out.println(result.getName());
      System.out.println(result.getCategory());
      System.out.println(result.getRawBody());
      System.out.println(result.getWhatsappTemplateName());
      System.out.println(result.getWhatsappTemplateStatus());
      System.out.println(result.getCreatedAt());
      System.out.println(result.getUpdatedAt());
    } catch (ApiException e) {
      System.err.println("Exception when calling TemplatesApi#createTemplate");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<ResponsesTemplateResponse> response = client
              .templates
              .createTemplate(customerId, name)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TemplatesApi#createTemplate");
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
| **templateCreateRequest** | [**TemplateCreateRequest**](TemplateCreateRequest.md)| Template creation details including customer ID and template name | |

### Return type

[**ResponsesTemplateResponse**](ResponsesTemplateResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Template created successfully |  -  |

<a name="getTemplatesForCustomer"></a>
# **getTemplatesForCustomer**
> List&lt;ResponsesTemplateResponse&gt; getTemplatesForCustomer(customerId).execute();

Retrieve all templates for a customer

Returns a list of all message templates associated with the specified customer ID. Templates are returned in descending order by creation date.

### Example
```java
import com.texthive.client.ApiClient;
import com.texthive.client.ApiException;
import com.texthive.client.ApiResponse;
import com.texthive.client.Texthive;
import com.texthive.client.Configuration;
import com.texthive.client.auth.*;
import com.texthive.client.model.*;
import com.texthive.client.api.TemplatesApi;
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
    UUID customerId = UUID.randomUUID(); // Unique identifier of the customer
    try {
      List<ResponsesTemplateResponse> result = client
              .templates
              .getTemplatesForCustomer(customerId)
              .execute();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TemplatesApi#getTemplatesForCustomer");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<ResponsesTemplateResponse>> response = client
              .templates
              .getTemplatesForCustomer(customerId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TemplatesApi#getTemplatesForCustomer");
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
| **customerId** | **UUID**| Unique identifier of the customer | |

### Return type

[**List&lt;ResponsesTemplateResponse&gt;**](ResponsesTemplateResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of templates retrieved successfully |  -  |
| **401** | Authentication credentials are missing or invalid |  -  |


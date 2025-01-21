# ContactApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getContactById**](ContactApi.md#getContactById) | **GET** /contact/{customerId}/id/{id} | Retrieve a contact by ID |
| [**getContactByPhone**](ContactApi.md#getContactByPhone) | **GET** /contact/{customerId}/phone/{phoneNumber} | Retrieve a contact by phone number |


<a name="getContactById"></a>
# **getContactById**
> Contact getContactById(customerId, id).execute();

Retrieve a contact by ID

Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.

### Example
```java
import com.texthive.client.ApiClient;
import com.texthive.client.ApiException;
import com.texthive.client.ApiResponse;
import com.texthive.client.Texthive;
import com.texthive.client.Configuration;
import com.texthive.client.auth.*;
import com.texthive.client.model.*;
import com.texthive.client.api.ContactApi;
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
    UUID customerId = UUID.randomUUID(); // Unique identifier of the customer account
    UUID id = UUID.randomUUID(); // Unique identifier of the contact
    try {
      Contact result = client
              .contact
              .getContactById(customerId, id)
              .execute();
      System.out.println(result);
      System.out.println(result.getId());
      System.out.println(result.getPhoneNumber());
      System.out.println(result.getCountryCode());
      System.out.println(result.getNationalFormat());
      System.out.println(result.getAvailableChannels());
      System.out.println(result.getDefaultChannel());
      System.out.println(result.getVerified());
      System.out.println(result.getCreatedAt());
      System.out.println(result.getUpdatedAt());
    } catch (ApiException e) {
      System.err.println("Exception when calling ContactApi#getContactById");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<Contact> response = client
              .contact
              .getContactById(customerId, id)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling ContactApi#getContactById");
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
| **customerId** | **UUID**| Unique identifier of the customer account | |
| **id** | **UUID**| Unique identifier of the contact | |

### Return type

[**Contact**](Contact.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Contact details successfully retrieved |  -  |
| **401** | Authentication credentials are missing or invalid |  -  |
| **404** | Contact not found |  -  |

<a name="getContactByPhone"></a>
# **getContactByPhone**
> Contact getContactByPhone(customerId, phoneNumber).execute();

Retrieve a contact by phone number

Looks up contact information using a phone number. This endpoint is useful when you need to find a contact&#39;s details but only have their phone number. It returns the same detailed information as the ID-based lookup.

### Example
```java
import com.texthive.client.ApiClient;
import com.texthive.client.ApiException;
import com.texthive.client.ApiResponse;
import com.texthive.client.Texthive;
import com.texthive.client.Configuration;
import com.texthive.client.auth.*;
import com.texthive.client.model.*;
import com.texthive.client.api.ContactApi;
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
    UUID customerId = UUID.randomUUID(); // Unique identifier of the customer account
    String phoneNumber = "phoneNumber_example"; // Phone number in E.164 format (e.g., +1234567890)
    try {
      Contact result = client
              .contact
              .getContactByPhone(customerId, phoneNumber)
              .execute();
      System.out.println(result);
      System.out.println(result.getId());
      System.out.println(result.getPhoneNumber());
      System.out.println(result.getCountryCode());
      System.out.println(result.getNationalFormat());
      System.out.println(result.getAvailableChannels());
      System.out.println(result.getDefaultChannel());
      System.out.println(result.getVerified());
      System.out.println(result.getCreatedAt());
      System.out.println(result.getUpdatedAt());
    } catch (ApiException e) {
      System.err.println("Exception when calling ContactApi#getContactByPhone");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<Contact> response = client
              .contact
              .getContactByPhone(customerId, phoneNumber)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling ContactApi#getContactByPhone");
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
| **customerId** | **UUID**| Unique identifier of the customer account | |
| **phoneNumber** | **String**| Phone number in E.164 format (e.g., +1234567890) | |

### Return type

[**Contact**](Contact.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Contact details successfully retrieved |  -  |
| **401** | Authentication credentials are missing or invalid |  -  |
| **404** | Contact not found |  -  |


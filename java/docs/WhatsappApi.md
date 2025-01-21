# WhatsappApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getWhatsappContact**](WhatsappApi.md#getWhatsappContact) | **GET** /whatsapp | Retrieve WhatsApp contact information |


<a name="getWhatsappContact"></a>
# **getWhatsappContact**
> WhatsAppPayload getWhatsappContact(phoneNumber, retrieveIfDoesNotExists).sentId(sentId).execute();

Retrieve WhatsApp contact information

Fetches or creates WhatsApp contact information for a given phone number. This endpoint validates WhatsApp availability and returns detailed contact metadata including business account status and profile information.

### Example
```java
import com.texthive.client.ApiClient;
import com.texthive.client.ApiException;
import com.texthive.client.ApiResponse;
import com.texthive.client.Texthive;
import com.texthive.client.Configuration;
import com.texthive.client.auth.*;
import com.texthive.client.model.*;
import com.texthive.client.api.WhatsappApi;
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
    String phoneNumber = "+14155552671"; // Phone number in international format (E.164)
    Boolean retrieveIfDoesNotExists = false; // Whether to create a new contact if one doesn't exist
    UUID sentId = UUID.randomUUID(); // Optional Sent platform identifier for tracking
    try {
      WhatsAppPayload result = client
              .whatsapp
              .getWhatsappContact(phoneNumber, retrieveIfDoesNotExists)
              .sentId(sentId)
              .execute();
      System.out.println(result);
      System.out.println(result.getId());
      System.out.println(result.getSentId());
      System.out.println(result.getPhoneNumber());
      System.out.println(result.getWhatsappId());
      System.out.println(result.getCountryCode());
      System.out.println(result.getNumberType());
      System.out.println(result.getProfilePicture());
      System.out.println(result.getIsBusiness());
      System.out.println(result.getInvalidRecord());
    } catch (ApiException e) {
      System.err.println("Exception when calling WhatsappApi#getWhatsappContact");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<WhatsAppPayload> response = client
              .whatsapp
              .getWhatsappContact(phoneNumber, retrieveIfDoesNotExists)
              .sentId(sentId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling WhatsappApi#getWhatsappContact");
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
| **phoneNumber** | **String**| Phone number in international format (E.164) | |
| **retrieveIfDoesNotExists** | **Boolean**| Whether to create a new contact if one doesn&#39;t exist | [default to false] |
| **sentId** | **UUID**| Optional Sent platform identifier for tracking | [optional] |

### Return type

[**WhatsAppPayload**](WhatsAppPayload.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved WhatsApp contact information |  -  |
| **401** | Unauthorized - Invalid or missing API key |  -  |
| **404** | WhatsApp contact not found and creation not requested |  -  |


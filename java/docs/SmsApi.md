# SmsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getContactInfo**](SmsApi.md#getContactInfo) | **GET** /sms | Retrieve SMS contact information and capabilities |


<a name="getContactInfo"></a>
# **getContactInfo**
> SMSPayload getContactInfo(phoneNumber, retrieveIfDoesNotExists).sentId(sentId).execute();

Retrieve SMS contact information and capabilities

Fetches or creates SMS contact information for a given phone number. This endpoint validates the phone number, determines SMS capabilities, and returns detailed formatting information needed for message delivery. Use this before sending messages to ensure proper SMS channel availability.

### Example
```java
import com.texthive.client.ApiClient;
import com.texthive.client.ApiException;
import com.texthive.client.ApiResponse;
import com.texthive.client.Texthive;
import com.texthive.client.Configuration;
import com.texthive.client.auth.*;
import com.texthive.client.model.*;
import com.texthive.client.api.SmsApi;
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
    String phoneNumber = "+14155552671"; // Target phone number in E.164 format (e.g., +1234567890)
    Boolean retrieveIfDoesNotExists = true; // When true, creates a new SMS contact if one doesn't exist
    UUID sentId = UUID.randomUUID(); // Optional Sent platform identifier for existing contacts
    try {
      SMSPayload result = client
              .sms
              .getContactInfo(phoneNumber, retrieveIfDoesNotExists)
              .sentId(sentId)
              .execute();
      System.out.println(result);
      System.out.println(result.getId());
      System.out.println(result.getSentId());
      System.out.println(result.getPhoneNumber());
      System.out.println(result.getCountryCode());
      System.out.println(result.getValidNumber());
      System.out.println(result.getNationalFormat());
      System.out.println(result.getPayload());
    } catch (ApiException e) {
      System.err.println("Exception when calling SmsApi#getContactInfo");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<SMSPayload> response = client
              .sms
              .getContactInfo(phoneNumber, retrieveIfDoesNotExists)
              .sentId(sentId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling SmsApi#getContactInfo");
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
| **phoneNumber** | **String**| Target phone number in E.164 format (e.g., +1234567890) | |
| **retrieveIfDoesNotExists** | **Boolean**| When true, creates a new SMS contact if one doesn&#39;t exist | |
| **sentId** | **UUID**| Optional Sent platform identifier for existing contacts | [optional] |

### Return type

[**SMSPayload**](SMSPayload.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved SMS contact information |  -  |
| **401** | Unauthorized - Invalid or missing API key |  -  |


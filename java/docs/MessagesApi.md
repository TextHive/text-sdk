# MessagesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**sendMessageToContact**](MessagesApi.md#sendMessageToContact) | **POST** /messages | Send a message to a contact using a template |
| [**sendMessageToPhoneNumber**](MessagesApi.md#sendMessageToPhoneNumber) | **POST** /messages/phone-number | Send a message to a phone number using a template |


<a name="sendMessageToContact"></a>
# **sendMessageToContact**
> MessagesSendMessageToContactResponse sendMessageToContact(sendMessageToContactRequest).execute();

Send a message to a contact using a template

Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact&#39;s preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.

### Example
```java
import com.texthive.client.ApiClient;
import com.texthive.client.ApiException;
import com.texthive.client.ApiResponse;
import com.texthive.client.Texthive;
import com.texthive.client.Configuration;
import com.texthive.client.auth.*;
import com.texthive.client.model.*;
import com.texthive.client.api.MessagesApi;
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
    UUID contactId = UUID.randomUUID(); // Unique identifier of the contact
    UUID templateId = UUID.randomUUID(); // Unique identifier of the message template
    try {
      MessagesSendMessageToContactResponse result = client
              .messages
              .sendMessageToContact(customerId, contactId, templateId)
              .execute();
      System.out.println(result);
      System.out.println(result.getMessageId());
      System.out.println(result.getStatus());
      System.out.println(result.getChannel());
    } catch (ApiException e) {
      System.err.println("Exception when calling MessagesApi#sendMessageToContact");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<MessagesSendMessageToContactResponse> response = client
              .messages
              .sendMessageToContact(customerId, contactId, templateId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling MessagesApi#sendMessageToContact");
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
| **sendMessageToContactRequest** | [**SendMessageToContactRequest**](SendMessageToContactRequest.md)| Message details including customer ID, contact ID, and template ID | |

### Return type

[**MessagesSendMessageToContactResponse**](MessagesSendMessageToContactResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Message successfully queued for delivery |  -  |
| **401** | Unauthorized - Invalid or missing API key |  -  |
| **404** | Contact, template, or customer not found |  -  |

<a name="sendMessageToPhoneNumber"></a>
# **sendMessageToPhoneNumber**
> MessagesSendMessageToPhoneNumberResponse sendMessageToPhoneNumber(sendMessageToPhoneNumberRequest).execute();

Send a message to a phone number using a template

Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn&#39;t exist.

### Example
```java
import com.texthive.client.ApiClient;
import com.texthive.client.ApiException;
import com.texthive.client.ApiResponse;
import com.texthive.client.Texthive;
import com.texthive.client.Configuration;
import com.texthive.client.auth.*;
import com.texthive.client.model.*;
import com.texthive.client.api.MessagesApi;
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
    String phoneNumber = "phoneNumber_example"; // Phone number in E.164 format
    UUID templateId = UUID.randomUUID(); // Unique identifier of the message template
    try {
      MessagesSendMessageToPhoneNumberResponse result = client
              .messages
              .sendMessageToPhoneNumber(customerId, phoneNumber, templateId)
              .execute();
      System.out.println(result);
      System.out.println(result.getMessageId());
      System.out.println(result.getStatus());
      System.out.println(result.getChannel());
      System.out.println(result.getContactId());
    } catch (ApiException e) {
      System.err.println("Exception when calling MessagesApi#sendMessageToPhoneNumber");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<MessagesSendMessageToPhoneNumberResponse> response = client
              .messages
              .sendMessageToPhoneNumber(customerId, phoneNumber, templateId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling MessagesApi#sendMessageToPhoneNumber");
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
| **sendMessageToPhoneNumberRequest** | [**SendMessageToPhoneNumberRequest**](SendMessageToPhoneNumberRequest.md)| Message details including customer ID, phone number, and template ID | |

### Return type

[**MessagesSendMessageToPhoneNumberResponse**](MessagesSendMessageToPhoneNumberResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Message successfully queued for delivery |  -  |
| **400** | Invalid phone number or request parameters |  -  |
| **401** | Unauthorized - Invalid or missing API key |  -  |
| **404** | Template or customer not found |  -  |


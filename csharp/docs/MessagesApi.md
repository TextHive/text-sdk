# Texthive.Net.Api.MessagesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**SendMessageToContact**](MessagesApi.md#sendmessagetocontact) | **POST** /messages | Send a message to a contact using a template |
| [**SendMessageToPhoneNumber**](MessagesApi.md#sendmessagetophonenumber) | **POST** /messages/phone-number | Send a message to a phone number using a template |


# **SendMessageToContact**



Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact's preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using Texthive.Net.Client;
using Texthive.Net.Model;

namespace Example
{
    public class SendMessageToContactExample
    {
        public static void Main()
        {
            Texthive client = new Texthive();
            // Configure API key authorization: ApiKey
            client.SetApiKey("YOUR_API_KEY");
            // Configure token for authorization
            client.SetAccessToken("YOUR_TOKEN");

            var customerId = "customerId_example"; // Unique identifier of the customer
            var contactId = "contactId_example"; // Unique identifier of the contact
            var templateId = "templateId_example"; // Unique identifier of the message template
            
            // Message details including customer ID, contact ID, and template ID
            var sendMessageToContactRequest = new SendMessageToContactRequest(
                customerId,
                contactId,
                templateId
            );
            
            try
            {
                // Send a message to a contact using a template
                MessagesSendMessageToContactResponse result = client.Messages.SendMessageToContact(sendMessageToContactRequest);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling MessagesApi.SendMessageToContact: " + e.Message);
                Console.WriteLine("Status Code: "+ e.ErrorCode);
                Console.WriteLine(e.StackTrace);
            }
            catch (ClientException e)
            {
                Console.WriteLine(e.Response.StatusCode);
                Console.WriteLine(e.Response.RawContent);
                Console.WriteLine(e.InnerException);
            }
        }
    }
}
```

#### Using the SendMessageToContactWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Send a message to a contact using a template
    ApiResponse<MessagesSendMessageToContactResponse> response = apiInstance.SendMessageToContactWithHttpInfo(sendMessageToContactRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MessagesApi.SendMessageToContactWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **sendMessageToContactRequest** | [**SendMessageToContactRequest**](SendMessageToContactRequest.md) | Message details including customer ID, contact ID, and template ID |  |

### Return type

[**MessagesSendMessageToContactResponse**](MessagesSendMessageToContactResponse.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Message successfully queued for delivery |  -  |
| **400** | Invalid request parameters |  -  |
| **401** | Unauthorized - Invalid or missing API key |  -  |
| **404** | Contact, template, or customer not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **SendMessageToPhoneNumber**



Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn't exist.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using Texthive.Net.Client;
using Texthive.Net.Model;

namespace Example
{
    public class SendMessageToPhoneNumberExample
    {
        public static void Main()
        {
            Texthive client = new Texthive();
            // Configure API key authorization: ApiKey
            client.SetApiKey("YOUR_API_KEY");
            // Configure token for authorization
            client.SetAccessToken("YOUR_TOKEN");

            var customerId = "customerId_example"; // Unique identifier of the customer
            var phoneNumber = "phoneNumber_example"; // Phone number in E.164 format
            var templateId = "templateId_example"; // Unique identifier of the message template
            
            // Message details including customer ID, phone number, and template ID
            var sendMessageToPhoneNumberRequest = new SendMessageToPhoneNumberRequest(
                customerId,
                phoneNumber,
                templateId
            );
            
            try
            {
                // Send a message to a phone number using a template
                MessagesSendMessageToPhoneNumberResponse result = client.Messages.SendMessageToPhoneNumber(sendMessageToPhoneNumberRequest);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling MessagesApi.SendMessageToPhoneNumber: " + e.Message);
                Console.WriteLine("Status Code: "+ e.ErrorCode);
                Console.WriteLine(e.StackTrace);
            }
            catch (ClientException e)
            {
                Console.WriteLine(e.Response.StatusCode);
                Console.WriteLine(e.Response.RawContent);
                Console.WriteLine(e.InnerException);
            }
        }
    }
}
```

#### Using the SendMessageToPhoneNumberWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Send a message to a phone number using a template
    ApiResponse<MessagesSendMessageToPhoneNumberResponse> response = apiInstance.SendMessageToPhoneNumberWithHttpInfo(sendMessageToPhoneNumberRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MessagesApi.SendMessageToPhoneNumberWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **sendMessageToPhoneNumberRequest** | [**SendMessageToPhoneNumberRequest**](SendMessageToPhoneNumberRequest.md) | Message details including customer ID, phone number, and template ID |  |

### Return type

[**MessagesSendMessageToPhoneNumberResponse**](MessagesSendMessageToPhoneNumberResponse.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Message successfully queued for delivery |  -  |
| **400** | Invalid phone number or request parameters |  -  |
| **401** | Unauthorized - Invalid or missing API key |  -  |
| **404** | Template or customer not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


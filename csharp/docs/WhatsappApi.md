# Texthive.Net.Api.WhatsappApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetWhatsappContact**](WhatsappApi.md#getwhatsappcontact) | **GET** /whatsapp | Retrieve WhatsApp contact information |


# **GetWhatsappContact**



Fetches or creates WhatsApp contact information for a given phone number. This endpoint validates WhatsApp availability and returns detailed contact metadata including business account status and profile information.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using Texthive.Net.Client;
using Texthive.Net.Model;

namespace Example
{
    public class GetWhatsappContactExample
    {
        public static void Main()
        {
            Texthive client = new Texthive();
            // Configure API key authorization: ApiKey
            client.SetApiKey("YOUR_API_KEY");
            // Configure token for authorization
            client.SetAccessToken("YOUR_TOKEN");

            var phoneNumber = "+14155552671"; // Phone number in international format (E.164)
            var retrieveIfDoesNotExists = false; // Whether to create a new contact if one doesn't exist (default to false)
            var sentId = "sentId_example"; // Optional Sent platform identifier for tracking (optional) 
            
            try
            {
                // Retrieve WhatsApp contact information
                WhatsAppPayload result = client.Whatsapp.GetWhatsappContact(phoneNumber, retrieveIfDoesNotExists, sentId);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling WhatsappApi.GetWhatsappContact: " + e.Message);
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

#### Using the GetWhatsappContactWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Retrieve WhatsApp contact information
    ApiResponse<WhatsAppPayload> response = apiInstance.GetWhatsappContactWithHttpInfo(phoneNumber, retrieveIfDoesNotExists, sentId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling WhatsappApi.GetWhatsappContactWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **phoneNumber** | **string** | Phone number in international format (E.164) |  |
| **retrieveIfDoesNotExists** | **bool** | Whether to create a new contact if one doesn&#39;t exist | [default to false] |
| **sentId** | **string** | Optional Sent platform identifier for tracking | [optional]  |

### Return type

[**WhatsAppPayload**](WhatsAppPayload.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved WhatsApp contact information |  -  |
| **400** | Invalid phone number format or request parameters |  -  |
| **401** | Unauthorized - Invalid or missing API key |  -  |
| **404** | WhatsApp contact not found and creation not requested |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


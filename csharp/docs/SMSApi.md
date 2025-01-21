# Texthive.Net.Api.SMSApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetContactInfo**](SMSApi.md#getcontactinfo) | **GET** /sms | Retrieve SMS contact information and capabilities |


# **GetContactInfo**



Fetches or creates SMS contact information for a given phone number. This endpoint validates the phone number, determines SMS capabilities, and returns detailed formatting information needed for message delivery. Use this before sending messages to ensure proper SMS channel availability.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using Texthive.Net.Client;
using Texthive.Net.Model;

namespace Example
{
    public class GetContactInfoExample
    {
        public static void Main()
        {
            Texthive client = new Texthive();
            // Configure API key authorization: ApiKey
            client.SetApiKey("YOUR_API_KEY");
            // Configure token for authorization
            client.SetAccessToken("YOUR_TOKEN");

            var phoneNumber = "+14155552671"; // Target phone number in E.164 format (e.g., +1234567890)
            var retrieveIfDoesNotExists = true; // When true, creates a new SMS contact if one doesn't exist
            var sentId = "sentId_example"; // Optional Sent platform identifier for existing contacts (optional) 
            
            try
            {
                // Retrieve SMS contact information and capabilities
                SMSPayload result = client.SMS.GetContactInfo(phoneNumber, retrieveIfDoesNotExists, sentId);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling SMSApi.GetContactInfo: " + e.Message);
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

#### Using the GetContactInfoWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Retrieve SMS contact information and capabilities
    ApiResponse<SMSPayload> response = apiInstance.GetContactInfoWithHttpInfo(phoneNumber, retrieveIfDoesNotExists, sentId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SMSApi.GetContactInfoWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **phoneNumber** | **string** | Target phone number in E.164 format (e.g., +1234567890) |  |
| **retrieveIfDoesNotExists** | **bool** | When true, creates a new SMS contact if one doesn&#39;t exist |  |
| **sentId** | **string** | Optional Sent platform identifier for existing contacts | [optional]  |

### Return type

[**SMSPayload**](SMSPayload.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved SMS contact information |  -  |
| **400** | Invalid phone number format or request parameters |  -  |
| **401** | Unauthorized - Invalid or missing API key |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


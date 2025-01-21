# Texthive.Net.Api.ContactApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetContactById**](ContactApi.md#getcontactbyid) | **GET** /contact/{customerId}/id/{id} | Retrieve a contact by ID |
| [**GetContactByPhone**](ContactApi.md#getcontactbyphone) | **GET** /contact/{customerId}/phone/{phoneNumber} | Retrieve a contact by phone number |


# **GetContactById**



Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using Texthive.Net.Client;
using Texthive.Net.Model;

namespace Example
{
    public class GetContactByIdExample
    {
        public static void Main()
        {
            Texthive client = new Texthive();
            // Configure API key authorization: ApiKey
            client.SetApiKey("YOUR_API_KEY");
            // Configure token for authorization
            client.SetAccessToken("YOUR_TOKEN");

            var customerId = "customerId_example"; // Unique identifier of the customer account
            var id = "id_example"; // Unique identifier of the contact
            
            try
            {
                // Retrieve a contact by ID
                Contact result = client.Contact.GetContactById(customerId, id);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling ContactApi.GetContactById: " + e.Message);
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

#### Using the GetContactByIdWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Retrieve a contact by ID
    ApiResponse<Contact> response = apiInstance.GetContactByIdWithHttpInfo(customerId, id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ContactApi.GetContactByIdWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **customerId** | **string** | Unique identifier of the customer account |  |
| **id** | **string** | Unique identifier of the contact |  |

### Return type

[**Contact**](Contact.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Contact details successfully retrieved |  -  |
| **401** | Authentication credentials are missing or invalid |  -  |
| **404** | Contact not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **GetContactByPhone**



Looks up contact information using a phone number. This endpoint is useful when you need to find a contact's details but only have their phone number. It returns the same detailed information as the ID-based lookup.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using Texthive.Net.Client;
using Texthive.Net.Model;

namespace Example
{
    public class GetContactByPhoneExample
    {
        public static void Main()
        {
            Texthive client = new Texthive();
            // Configure API key authorization: ApiKey
            client.SetApiKey("YOUR_API_KEY");
            // Configure token for authorization
            client.SetAccessToken("YOUR_TOKEN");

            var customerId = "customerId_example"; // Unique identifier of the customer account
            var phoneNumber = "phoneNumber_example"; // Phone number in E.164 format (e.g., +1234567890)
            
            try
            {
                // Retrieve a contact by phone number
                Contact result = client.Contact.GetContactByPhone(customerId, phoneNumber);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling ContactApi.GetContactByPhone: " + e.Message);
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

#### Using the GetContactByPhoneWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Retrieve a contact by phone number
    ApiResponse<Contact> response = apiInstance.GetContactByPhoneWithHttpInfo(customerId, phoneNumber);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ContactApi.GetContactByPhoneWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **customerId** | **string** | Unique identifier of the customer account |  |
| **phoneNumber** | **string** | Phone number in E.164 format (e.g., +1234567890) |  |

### Return type

[**Contact**](Contact.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Contact details successfully retrieved |  -  |
| **401** | Authentication credentials are missing or invalid |  -  |
| **404** | Contact not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


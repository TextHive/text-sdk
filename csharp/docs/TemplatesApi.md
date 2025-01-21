# Texthive.Net.Api.TemplatesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**CreateTemplate**](TemplatesApi.md#createtemplate) | **POST** /templates | Create a new message template |
| [**GetTemplatesForCustomer**](TemplatesApi.md#gettemplatesforcustomer) | **GET** /templates | Retrieve all templates for a customer |


# **CreateTemplate**



Creates a new message template that can be used for sending standardized messages across different channels. Templates ensure consistent messaging and support variable substitution.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using Texthive.Net.Client;
using Texthive.Net.Model;

namespace Example
{
    public class CreateTemplateExample
    {
        public static void Main()
        {
            Texthive client = new Texthive();
            // Configure API key authorization: ApiKey
            client.SetApiKey("YOUR_API_KEY");
            // Configure token for authorization
            client.SetAccessToken("YOUR_TOKEN");

            var customerId = "customerId_example"; // Unique identifier of the customer creating the template
            var name = "name_example"; // Name of the template for identification purposes
            
            // Template creation details including customer ID and template name
            var templateCreateRequest = new TemplateCreateRequest(
                customerId,
                name
            );
            
            try
            {
                // Create a new message template
                ResponsesTemplateResponse result = client.Templates.CreateTemplate(templateCreateRequest);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling TemplatesApi.CreateTemplate: " + e.Message);
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

#### Using the CreateTemplateWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Create a new message template
    ApiResponse<ResponsesTemplateResponse> response = apiInstance.CreateTemplateWithHttpInfo(templateCreateRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TemplatesApi.CreateTemplateWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **templateCreateRequest** | [**TemplateCreateRequest**](TemplateCreateRequest.md) | Template creation details including customer ID and template name |  |

### Return type

[**ResponsesTemplateResponse**](ResponsesTemplateResponse.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Template created successfully |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **GetTemplatesForCustomer**



Returns a list of all message templates associated with the specified customer ID. Templates are returned in descending order by creation date.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using Texthive.Net.Client;
using Texthive.Net.Model;

namespace Example
{
    public class GetTemplatesForCustomerExample
    {
        public static void Main()
        {
            Texthive client = new Texthive();
            // Configure API key authorization: ApiKey
            client.SetApiKey("YOUR_API_KEY");
            // Configure token for authorization
            client.SetAccessToken("YOUR_TOKEN");

            var customerId = "customerId_example"; // Unique identifier of the customer
            
            try
            {
                // Retrieve all templates for a customer
                List<ResponsesTemplateResponse> result = client.Templates.GetTemplatesForCustomer(customerId);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling TemplatesApi.GetTemplatesForCustomer: " + e.Message);
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

#### Using the GetTemplatesForCustomerWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Retrieve all templates for a customer
    ApiResponse<List<ResponsesTemplateResponse>> response = apiInstance.GetTemplatesForCustomerWithHttpInfo(customerId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TemplatesApi.GetTemplatesForCustomerWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **customerId** | **string** | Unique identifier of the customer |  |

### Return type

[**List&lt;ResponsesTemplateResponse&gt;**](ResponsesTemplateResponse.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of templates retrieved successfully |  -  |
| **401** | Authentication credentials are missing or invalid |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


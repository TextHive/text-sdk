# TemplatesApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTemplate**](TemplatesApi.md#createTemplate) | **POST** /templates | Create a new message template
[**getTemplatesForCustomer**](TemplatesApi.md#getTemplatesForCustomer) | **GET** /templates | Retrieve all templates for a customer


<a name="createTemplate"></a>
# **createTemplate**
> ResponsesTemplateResponse createTemplate(templateCreateRequest)

Create a new message template

Creates a new message template that can be used for sending standardized messages across different channels. Templates ensure consistent messaging and support variable substitution.

### Example
```kotlin
// Import classes:
//import com.texthive.client.infrastructure.*
//import com.texthive.client.models.*

val apiInstance = TemplatesApi()
val templateCreateRequest : TemplateCreateRequest = {"customerId":"550e8400-e29b-41d4-a716-446655440000","name":"Order Confirmation"} // TemplateCreateRequest | Template creation details including customer ID and template name
try {
    val result : ResponsesTemplateResponse = apiInstance.createTemplate(templateCreateRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TemplatesApi#createTemplate")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TemplatesApi#createTemplate")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateCreateRequest** | [**TemplateCreateRequest**](TemplateCreateRequest.md)| Template creation details including customer ID and template name |

### Return type

[**ResponsesTemplateResponse**](ResponsesTemplateResponse.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""
Configure BearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getTemplatesForCustomer"></a>
# **getTemplatesForCustomer**
> kotlin.collections.List&lt;ResponsesTemplateResponse&gt; getTemplatesForCustomer(customerId)

Retrieve all templates for a customer

Returns a list of all message templates associated with the specified customer ID. Templates are returned in descending order by creation date.

### Example
```kotlin
// Import classes:
//import com.texthive.client.infrastructure.*
//import com.texthive.client.models.*

val apiInstance = TemplatesApi()
val customerId : java.util.UUID = "38400000-8cf0-11bd-b23e-10b96e4ef00d" // java.util.UUID | Unique identifier of the customer
try {
    val result : kotlin.collections.List<ResponsesTemplateResponse> = apiInstance.getTemplatesForCustomer(customerId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TemplatesApi#getTemplatesForCustomer")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TemplatesApi#getTemplatesForCustomer")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **java.util.UUID**| Unique identifier of the customer |

### Return type

[**kotlin.collections.List&lt;ResponsesTemplateResponse&gt;**](ResponsesTemplateResponse.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""
Configure BearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


# ContactApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getContactById**](ContactApi.md#getContactById) | **GET** /contact/{customerId}/id/{id} | Retrieve a contact by ID
[**getContactByPhone**](ContactApi.md#getContactByPhone) | **GET** /contact/{customerId}/phone/{phoneNumber} | Retrieve a contact by phone number


<a name="getContactById"></a>
# **getContactById**
> Contact getContactById(customerId, id)

Retrieve a contact by ID

Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.

### Example
```kotlin
// Import classes:
//import com.texthive.client.infrastructure.*
//import com.texthive.client.models.*

val apiInstance = ContactApi()
val customerId : java.util.UUID = "38400000-8cf0-11bd-b23e-10b96e4ef00d" // java.util.UUID | Unique identifier of the customer account
val id : java.util.UUID = "38400000-8cf0-11bd-b23e-10b96e4ef00d" // java.util.UUID | Unique identifier of the contact
try {
    val result : Contact = apiInstance.getContactById(customerId, id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ContactApi#getContactById")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ContactApi#getContactById")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **java.util.UUID**| Unique identifier of the customer account |
 **id** | **java.util.UUID**| Unique identifier of the contact |

### Return type

[**Contact**](Contact.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""
Configure BearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getContactByPhone"></a>
# **getContactByPhone**
> Contact getContactByPhone(customerId, phoneNumber)

Retrieve a contact by phone number

Looks up contact information using a phone number. This endpoint is useful when you need to find a contact&#39;s details but only have their phone number. It returns the same detailed information as the ID-based lookup.

### Example
```kotlin
// Import classes:
//import com.texthive.client.infrastructure.*
//import com.texthive.client.models.*

val apiInstance = ContactApi()
val customerId : java.util.UUID = "38400000-8cf0-11bd-b23e-10b96e4ef00d" // java.util.UUID | Unique identifier of the customer account
val phoneNumber : kotlin.String = phoneNumber_example // kotlin.String | Phone number in E.164 format (e.g., +1234567890)
try {
    val result : Contact = apiInstance.getContactByPhone(customerId, phoneNumber)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ContactApi#getContactByPhone")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ContactApi#getContactByPhone")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **java.util.UUID**| Unique identifier of the customer account |
 **phoneNumber** | **kotlin.String**| Phone number in E.164 format (e.g., +1234567890) |

### Return type

[**Contact**](Contact.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""
Configure BearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


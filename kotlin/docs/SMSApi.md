# SMSApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getContactInfo**](SMSApi.md#getContactInfo) | **GET** /sms | Retrieve SMS contact information and capabilities


<a name="getContactInfo"></a>
# **getContactInfo**
> SMSPayload getContactInfo(phoneNumber, retrieveIfDoesNotExists, sentId)

Retrieve SMS contact information and capabilities

Fetches or creates SMS contact information for a given phone number. This endpoint validates the phone number, determines SMS capabilities, and returns detailed formatting information needed for message delivery. Use this before sending messages to ensure proper SMS channel availability.

### Example
```kotlin
// Import classes:
//import com.texthive.client.infrastructure.*
//import com.texthive.client.models.*

val apiInstance = SMSApi()
val phoneNumber : kotlin.String = "+14155552671" // kotlin.String | Target phone number in E.164 format (e.g., +1234567890)
val retrieveIfDoesNotExists : kotlin.Boolean = true // kotlin.Boolean | When true, creates a new SMS contact if one doesn't exist
val sentId : java.util.UUID = "38400000-8cf0-11bd-b23e-10b96e4ef00d" // java.util.UUID | Optional Sent platform identifier for existing contacts
try {
    val result : SMSPayload = apiInstance.getContactInfo(phoneNumber, retrieveIfDoesNotExists, sentId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SMSApi#getContactInfo")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SMSApi#getContactInfo")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **kotlin.String**| Target phone number in E.164 format (e.g., +1234567890) |
 **retrieveIfDoesNotExists** | **kotlin.Boolean**| When true, creates a new SMS contact if one doesn&#39;t exist |
 **sentId** | **java.util.UUID**| Optional Sent platform identifier for existing contacts | [optional]

### Return type

[**SMSPayload**](SMSPayload.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""
Configure BearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


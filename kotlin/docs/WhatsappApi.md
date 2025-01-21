# WhatsappApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getWhatsappContact**](WhatsappApi.md#getWhatsappContact) | **GET** /whatsapp | Retrieve WhatsApp contact information


<a name="getWhatsappContact"></a>
# **getWhatsappContact**
> WhatsAppPayload getWhatsappContact(phoneNumber, retrieveIfDoesNotExists, sentId)

Retrieve WhatsApp contact information

Fetches or creates WhatsApp contact information for a given phone number. This endpoint validates WhatsApp availability and returns detailed contact metadata including business account status and profile information.

### Example
```kotlin
// Import classes:
//import com.texthive.client.infrastructure.*
//import com.texthive.client.models.*

val apiInstance = WhatsappApi()
val phoneNumber : kotlin.String = "+14155552671" // kotlin.String | Phone number in international format (E.164)
val retrieveIfDoesNotExists : kotlin.Boolean = false // kotlin.Boolean | Whether to create a new contact if one doesn't exist
val sentId : java.util.UUID = "38400000-8cf0-11bd-b23e-10b96e4ef00d" // java.util.UUID | Optional Sent platform identifier for tracking
try {
    val result : WhatsAppPayload = apiInstance.getWhatsappContact(phoneNumber, retrieveIfDoesNotExists, sentId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling WhatsappApi#getWhatsappContact")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling WhatsappApi#getWhatsappContact")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **kotlin.String**| Phone number in international format (E.164) |
 **retrieveIfDoesNotExists** | **kotlin.Boolean**| Whether to create a new contact if one doesn&#39;t exist | [default to false]
 **sentId** | **java.util.UUID**| Optional Sent platform identifier for tracking | [optional]

### Return type

[**WhatsAppPayload**](WhatsAppPayload.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""
Configure BearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


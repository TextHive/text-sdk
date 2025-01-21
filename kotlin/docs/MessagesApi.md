# MessagesApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sendMessageToContact**](MessagesApi.md#sendMessageToContact) | **POST** /messages | Send a message to a contact using a template
[**sendMessageToPhoneNumber**](MessagesApi.md#sendMessageToPhoneNumber) | **POST** /messages/phone-number | Send a message to a phone number using a template


<a name="sendMessageToContact"></a>
# **sendMessageToContact**
> MessagesSendMessageToContactResponse sendMessageToContact(sendMessageToContactRequest)

Send a message to a contact using a template

Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact&#39;s preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.

### Example
```kotlin
// Import classes:
//import com.texthive.client.infrastructure.*
//import com.texthive.client.models.*

val apiInstance = MessagesApi()
val sendMessageToContactRequest : SendMessageToContactRequest = {"customerId":"550e8400-e29b-41d4-a716-446655440000","contactId":"7c11e821-c839-4c3d-8a89-1f78b71a0c38","templateId":"9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d"} // SendMessageToContactRequest | Message details including customer ID, contact ID, and template ID
try {
    val result : MessagesSendMessageToContactResponse = apiInstance.sendMessageToContact(sendMessageToContactRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MessagesApi#sendMessageToContact")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MessagesApi#sendMessageToContact")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendMessageToContactRequest** | [**SendMessageToContactRequest**](SendMessageToContactRequest.md)| Message details including customer ID, contact ID, and template ID |

### Return type

[**MessagesSendMessageToContactResponse**](MessagesSendMessageToContactResponse.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""
Configure BearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="sendMessageToPhoneNumber"></a>
# **sendMessageToPhoneNumber**
> MessagesSendMessageToPhoneNumberResponse sendMessageToPhoneNumber(sendMessageToPhoneNumberRequest)

Send a message to a phone number using a template

Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn&#39;t exist.

### Example
```kotlin
// Import classes:
//import com.texthive.client.infrastructure.*
//import com.texthive.client.models.*

val apiInstance = MessagesApi()
val sendMessageToPhoneNumberRequest : SendMessageToPhoneNumberRequest = {"customerId":"550e8400-e29b-41d4-a716-446655440000","phoneNumber":"+1234567890","templateId":"9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d"} // SendMessageToPhoneNumberRequest | Message details including customer ID, phone number, and template ID
try {
    val result : MessagesSendMessageToPhoneNumberResponse = apiInstance.sendMessageToPhoneNumber(sendMessageToPhoneNumberRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MessagesApi#sendMessageToPhoneNumber")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MessagesApi#sendMessageToPhoneNumber")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendMessageToPhoneNumberRequest** | [**SendMessageToPhoneNumberRequest**](SendMessageToPhoneNumberRequest.md)| Message details including customer ID, phone number, and template ID |

### Return type

[**MessagesSendMessageToPhoneNumberResponse**](MessagesSendMessageToPhoneNumberResponse.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""
Configure BearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


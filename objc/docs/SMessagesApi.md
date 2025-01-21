# SMessagesApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sendMessageToContact**](SMessagesApi.md#sendmessagetocontact) | **POST** /messages | Send a message to a contact using a template
[**sendMessageToPhoneNumber**](SMessagesApi.md#sendmessagetophonenumber) | **POST** /messages/phone-number | Send a message to a phone number using a template


# **sendMessageToContact**
```objc
-(NSURLSessionTask*) sendMessageToContactWithSendMessageToContactRequest: (SSendMessageToContactRequest*) sendMessageToContactRequest
        completionHandler: (void (^)(SMessagesSendMessageToContactResponse* output, NSError* error)) handler;
```

Send a message to a contact using a template

Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact's preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.

### Example
```objc
SDefaultConfiguration *apiConfig = [SDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];
// Configure HTTP basic authorization (authentication scheme: BearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SSendMessageToContactRequest* sendMessageToContactRequest = {"customerId":"550e8400-e29b-41d4-a716-446655440000","contactId":"7c11e821-c839-4c3d-8a89-1f78b71a0c38","templateId":"9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d"}; // Message details including customer ID, contact ID, and template ID

SMessagesApi*apiInstance = [[SMessagesApi alloc] init];

// Send a message to a contact using a template
[apiInstance sendMessageToContactWithSendMessageToContactRequest:sendMessageToContactRequest
          completionHandler: ^(SMessagesSendMessageToContactResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SMessagesApi->sendMessageToContact: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendMessageToContactRequest** | [**SSendMessageToContactRequest***](SSendMessageToContactRequest.md)| Message details including customer ID, contact ID, and template ID | 

### Return type

[**SMessagesSendMessageToContactResponse***](SMessagesSendMessageToContactResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendMessageToPhoneNumber**
```objc
-(NSURLSessionTask*) sendMessageToPhoneNumberWithSendMessageToPhoneNumberRequest: (SSendMessageToPhoneNumberRequest*) sendMessageToPhoneNumberRequest
        completionHandler: (void (^)(SMessagesSendMessageToPhoneNumberResponse* output, NSError* error)) handler;
```

Send a message to a phone number using a template

Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn't exist.

### Example
```objc
SDefaultConfiguration *apiConfig = [SDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];
// Configure HTTP basic authorization (authentication scheme: BearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SSendMessageToPhoneNumberRequest* sendMessageToPhoneNumberRequest = {"customerId":"550e8400-e29b-41d4-a716-446655440000","phoneNumber":"+1234567890","templateId":"9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d"}; // Message details including customer ID, phone number, and template ID

SMessagesApi*apiInstance = [[SMessagesApi alloc] init];

// Send a message to a phone number using a template
[apiInstance sendMessageToPhoneNumberWithSendMessageToPhoneNumberRequest:sendMessageToPhoneNumberRequest
          completionHandler: ^(SMessagesSendMessageToPhoneNumberResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SMessagesApi->sendMessageToPhoneNumber: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendMessageToPhoneNumberRequest** | [**SSendMessageToPhoneNumberRequest***](SSendMessageToPhoneNumberRequest.md)| Message details including customer ID, phone number, and template ID | 

### Return type

[**SMessagesSendMessageToPhoneNumberResponse***](SMessagesSendMessageToPhoneNumberResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


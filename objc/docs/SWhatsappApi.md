# SWhatsappApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getWhatsappContact**](SWhatsappApi.md#getwhatsappcontact) | **GET** /whatsapp | Retrieve WhatsApp contact information


# **getWhatsappContact**
```objc
-(NSURLSessionTask*) getWhatsappContactWithPhoneNumber: (NSString*) phoneNumber
    retrieveIfDoesNotExists: (NSNumber*) retrieveIfDoesNotExists
    sentId: (NSString*) sentId
        completionHandler: (void (^)(SWhatsAppPayload* output, NSError* error)) handler;
```

Retrieve WhatsApp contact information

Fetches or creates WhatsApp contact information for a given phone number. This endpoint validates WhatsApp availability and returns detailed contact metadata including business account status and profile information.

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


NSString* phoneNumber = "+14155552671"; // Phone number in international format (E.164)
NSNumber* retrieveIfDoesNotExists = false; // Whether to create a new contact if one doesn't exist (default to @(NO))
NSString* sentId = @"sentId_example"; // Optional Sent platform identifier for tracking (optional)

SWhatsappApi*apiInstance = [[SWhatsappApi alloc] init];

// Retrieve WhatsApp contact information
[apiInstance getWhatsappContactWithPhoneNumber:phoneNumber
              retrieveIfDoesNotExists:retrieveIfDoesNotExists
              sentId:sentId
          completionHandler: ^(SWhatsAppPayload* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWhatsappApi->getWhatsappContact: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **NSString***| Phone number in international format (E.164) | 
 **retrieveIfDoesNotExists** | **NSNumber***| Whether to create a new contact if one doesn&#39;t exist | [default to @(NO)]
 **sentId** | **NSString***| Optional Sent platform identifier for tracking | [optional] 

### Return type

[**SWhatsAppPayload***](SWhatsAppPayload.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


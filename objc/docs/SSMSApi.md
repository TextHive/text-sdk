# SSMSApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getContactInfo**](SSMSApi.md#getcontactinfo) | **GET** /sms | Retrieve SMS contact information and capabilities


# **getContactInfo**
```objc
-(NSURLSessionTask*) getContactInfoWithPhoneNumber: (NSString*) phoneNumber
    retrieveIfDoesNotExists: (NSNumber*) retrieveIfDoesNotExists
    sentId: (NSString*) sentId
        completionHandler: (void (^)(SSMSPayload* output, NSError* error)) handler;
```

Retrieve SMS contact information and capabilities

Fetches or creates SMS contact information for a given phone number. This endpoint validates the phone number, determines SMS capabilities, and returns detailed formatting information needed for message delivery. Use this before sending messages to ensure proper SMS channel availability.

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


NSString* phoneNumber = "+14155552671"; // Target phone number in E.164 format (e.g., +1234567890)
NSNumber* retrieveIfDoesNotExists = @56; // When true, creates a new SMS contact if one doesn't exist
NSString* sentId = @"sentId_example"; // Optional Sent platform identifier for existing contacts (optional)

SSMSApi*apiInstance = [[SSMSApi alloc] init];

// Retrieve SMS contact information and capabilities
[apiInstance getContactInfoWithPhoneNumber:phoneNumber
              retrieveIfDoesNotExists:retrieveIfDoesNotExists
              sentId:sentId
          completionHandler: ^(SSMSPayload* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SSMSApi->getContactInfo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **NSString***| Target phone number in E.164 format (e.g., +1234567890) | 
 **retrieveIfDoesNotExists** | **NSNumber***| When true, creates a new SMS contact if one doesn&#39;t exist | 
 **sentId** | **NSString***| Optional Sent platform identifier for existing contacts | [optional] 

### Return type

[**SSMSPayload***](SSMSPayload.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# SContactApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getContactById**](SContactApi.md#getcontactbyid) | **GET** /contact/{customerId}/id/{id} | Retrieve a contact by ID
[**getContactByPhone**](SContactApi.md#getcontactbyphone) | **GET** /contact/{customerId}/phone/{phoneNumber} | Retrieve a contact by phone number


# **getContactById**
```objc
-(NSURLSessionTask*) getContactByIdWithCustomerId: (NSString*) customerId
    _id: (NSString*) _id
        completionHandler: (void (^)(SContact* output, NSError* error)) handler;
```

Retrieve a contact by ID

Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.

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


NSString* customerId = @"customerId_example"; // Unique identifier of the customer account
NSString* _id = @"_id_example"; // Unique identifier of the contact

SContactApi*apiInstance = [[SContactApi alloc] init];

// Retrieve a contact by ID
[apiInstance getContactByIdWithCustomerId:customerId
              _id:_id
          completionHandler: ^(SContact* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SContactApi->getContactById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| Unique identifier of the customer account | 
 **_id** | **NSString***| Unique identifier of the contact | 

### Return type

[**SContact***](SContact.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContactByPhone**
```objc
-(NSURLSessionTask*) getContactByPhoneWithCustomerId: (NSString*) customerId
    phoneNumber: (NSString*) phoneNumber
        completionHandler: (void (^)(SContact* output, NSError* error)) handler;
```

Retrieve a contact by phone number

Looks up contact information using a phone number. This endpoint is useful when you need to find a contact's details but only have their phone number. It returns the same detailed information as the ID-based lookup.

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


NSString* customerId = @"customerId_example"; // Unique identifier of the customer account
NSString* phoneNumber = @"phoneNumber_example"; // Phone number in E.164 format (e.g., +1234567890)

SContactApi*apiInstance = [[SContactApi alloc] init];

// Retrieve a contact by phone number
[apiInstance getContactByPhoneWithCustomerId:customerId
              phoneNumber:phoneNumber
          completionHandler: ^(SContact* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SContactApi->getContactByPhone: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| Unique identifier of the customer account | 
 **phoneNumber** | **NSString***| Phone number in E.164 format (e.g., +1234567890) | 

### Return type

[**SContact***](SContact.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


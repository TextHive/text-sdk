# STemplatesApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTemplate**](STemplatesApi.md#createtemplate) | **POST** /templates | Create a new message template
[**getTemplatesForCustomer**](STemplatesApi.md#gettemplatesforcustomer) | **GET** /templates | Retrieve all templates for a customer


# **createTemplate**
```objc
-(NSURLSessionTask*) createTemplateWithTemplateCreateRequest: (STemplateCreateRequest*) templateCreateRequest
        completionHandler: (void (^)(SResponsesTemplateResponse* output, NSError* error)) handler;
```

Create a new message template

Creates a new message template that can be used for sending standardized messages across different channels. Templates ensure consistent messaging and support variable substitution.

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


STemplateCreateRequest* templateCreateRequest = {"customerId":"550e8400-e29b-41d4-a716-446655440000","name":"Order Confirmation"}; // Template creation details including customer ID and template name

STemplatesApi*apiInstance = [[STemplatesApi alloc] init];

// Create a new message template
[apiInstance createTemplateWithTemplateCreateRequest:templateCreateRequest
          completionHandler: ^(SResponsesTemplateResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling STemplatesApi->createTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateCreateRequest** | [**STemplateCreateRequest***](STemplateCreateRequest.md)| Template creation details including customer ID and template name | 

### Return type

[**SResponsesTemplateResponse***](SResponsesTemplateResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTemplatesForCustomer**
```objc
-(NSURLSessionTask*) getTemplatesForCustomerWithCustomerId: (NSString*) customerId
        completionHandler: (void (^)(NSArray<SResponsesTemplateResponse>* output, NSError* error)) handler;
```

Retrieve all templates for a customer

Returns a list of all message templates associated with the specified customer ID. Templates are returned in descending order by creation date.

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


NSString* customerId = @"customerId_example"; // Unique identifier of the customer

STemplatesApi*apiInstance = [[STemplatesApi alloc] init];

// Retrieve all templates for a customer
[apiInstance getTemplatesForCustomerWithCustomerId:customerId
          completionHandler: ^(NSArray<SResponsesTemplateResponse>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling STemplatesApi->getTemplatesForCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| Unique identifier of the customer | 

### Return type

[**NSArray<SResponsesTemplateResponse>***](SResponsesTemplateResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


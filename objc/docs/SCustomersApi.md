# SCustomersApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomer**](SCustomersApi.md#createcustomer) | **POST** /customers | Create a new customer account
[**deleteCustomer**](SCustomersApi.md#deletecustomer) | **DELETE** /customers/{id} | Delete a customer
[**getAllCustomers**](SCustomersApi.md#getallcustomers) | **GET** /customers | Retrieve all customers with pagination
[**getCustomerById**](SCustomersApi.md#getcustomerbyid) | **GET** /customers/{id} | Retrieve a customer by ID
[**updateCustomer**](SCustomersApi.md#updatecustomer) | **PUT** /customers/{id} | Update customer information


# **createCustomer**
```objc
-(NSURLSessionTask*) createCustomerWithBody: (NSString*) body
        completionHandler: (void (^)(SCustomer* output, NSError* error)) handler;
```

Create a new customer account

Creates a new customer account in the Sent platform. This endpoint initializes a new customer profile with basic information and returns the created customer details including generated IDs and credentials for various messaging channels.

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


NSString* body = Acme Corp; // Customer name to create the account

SCustomersApi*apiInstance = [[SCustomersApi alloc] init];

// Create a new customer account
[apiInstance createCustomerWithBody:body
          completionHandler: ^(SCustomer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SCustomersApi->createCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **NSString***| Customer name to create the account | 

### Return type

[**SCustomer***](SCustomer.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomer**
```objc
-(NSURLSessionTask*) deleteCustomerWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete a customer

Permanently deletes a customer and all associated data. This action cannot be undone. All active services for this customer will be terminated.

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


NSString* _id = @"_id_example"; // Unique identifier of the customer to delete

SCustomersApi*apiInstance = [[SCustomersApi alloc] init];

// Delete a customer
[apiInstance deleteCustomerWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SCustomersApi->deleteCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Unique identifier of the customer to delete | 

### Return type

void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllCustomers**
```objc
-(NSURLSessionTask*) getAllCustomersWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
        completionHandler: (void (^)(NSArray<SCustomer>* output, NSError* error)) handler;
```

Retrieve all customers with pagination

Returns a paginated list of all customers. Use page and pageSize parameters to control the number of results returned. Results are sorted by creation date in descending order.

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


NSNumber* page = 1; // Page number to retrieve (starts from 1)
NSNumber* pageSize = 20; // Number of items to return per page

SCustomersApi*apiInstance = [[SCustomersApi alloc] init];

// Retrieve all customers with pagination
[apiInstance getAllCustomersWithPage:page
              pageSize:pageSize
          completionHandler: ^(NSArray<SCustomer>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SCustomersApi->getAllCustomers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Page number to retrieve (starts from 1) | 
 **pageSize** | **NSNumber***| Number of items to return per page | 

### Return type

[**NSArray<SCustomer>***](SCustomer.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerById**
```objc
-(NSURLSessionTask*) getCustomerByIdWithId: (NSString*) _id
        completionHandler: (void (^)(SCustomer* output, NSError* error)) handler;
```

Retrieve a customer by ID

Returns detailed information about a specific customer including their messaging channel configurations and credentials.

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


NSString* _id = @"_id_example"; // Unique identifier of the customer

SCustomersApi*apiInstance = [[SCustomersApi alloc] init];

// Retrieve a customer by ID
[apiInstance getCustomerByIdWithId:_id
          completionHandler: ^(SCustomer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SCustomersApi->getCustomerById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Unique identifier of the customer | 

### Return type

[**SCustomer***](SCustomer.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomer**
```objc
-(NSURLSessionTask*) updateCustomerWithId: (NSString*) _id
    customersUpdateCustomerRequest: (SCustomersUpdateCustomerRequest*) customersUpdateCustomerRequest
        completionHandler: (void (^)(SCustomer* output, NSError* error)) handler;
```

Update customer information

Updates an existing customer's information including messaging channel configurations. All fields in the request body will override existing values.

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


NSString* _id = @"_id_example"; // Unique identifier of the customer to update
SCustomersUpdateCustomerRequest* customersUpdateCustomerRequest = {"name":"Acme Corporation","sendingPhoneNumber":"+1234567890","smsMessagingProfileId":"msg_prof_789","smsBearerToken":"sms_token_def"}; // Updated customer information

SCustomersApi*apiInstance = [[SCustomersApi alloc] init];

// Update customer information
[apiInstance updateCustomerWithId:_id
              customersUpdateCustomerRequest:customersUpdateCustomerRequest
          completionHandler: ^(SCustomer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SCustomersApi->updateCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Unique identifier of the customer to update | 
 **customersUpdateCustomerRequest** | [**SCustomersUpdateCustomerRequest***](SCustomersUpdateCustomerRequest.md)| Updated customer information | 

### Return type

[**SCustomer***](SCustomer.md)

### Authorization

[ApiKey](../README.md#ApiKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

